require 'csv'
require 'faker'

namespace :parse do
  task :hospitalsCsvThreads => :environment do
    hospitals = CSV.read('db/hospitals.csv', headers: true)
    clinics = []

    clinic_mutex = Mutex.new
    threads = []

    hospitals.each_slice(300) do |slice|
      threads << Thread.new(slice) do |thread_rows|
        thread_rows.each do |row|
          name = row["Facility.Name"]
          address = Faker::Address.street_address
          number = Faker::Number.between(from: 10, to: 10000)
          year = Faker::Number.between(from: 1900, to: Date.today.year)
          clinic_type = row["Facility.Type"]
          city = row["Facility.City"]
          rating_mortality = row["Rating.Mortality"]
          clinic_mutex.synchronize do
            clinics << { name: name, address: address, number: number, year: year, clinic_type: clinic_type, city: city, rating_mortality: rating_mortality }
          end
        end
      end
    end

    threads.each do |thread|
      thread.join
    end

    puts "Adding #{clinics.count} clinics to the database..."

    clinic_threads = []

    clinics.each_slice(ENV.fetch("RAILS_MAX_THREADS") { 20 }) do |slice|
      clinic_threads << Thread.new(slice) do |thread_rows|
        thread_rows.each do |clinic|
          clinic_mutex.synchronize do
            Clinic.create(name: clinic[:name], address: clinic[:address], number: clinic[:number], year: clinic[:year], clinic_type: clinic[:clinic_type], city: clinic[:city], RatingMortality: clinic[:rating_mortality])
          end
        end
      end
    end

    clinic_threads.each do |clinic_thread|
      clinic_thread.join
    end

    puts "Done."
  end
end