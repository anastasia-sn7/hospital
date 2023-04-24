require 'csv'
require 'faker'

namespace :parse do
  task :hospitalsCsv => :environment do
    hospitals = CSV.read('db/hospitals.csv', headers: true)
    clinics = []
    hospitals.each do |row|
      name = row["Facility.Name"]
      address = Faker::Address.street_address
      number = Faker::Number.between(from: 10, to: 10000)
      year = Faker::Number.between(from: 1900, to: Date.today.year)
      clinic_type = row["Facility.Type"]
      city = row["Facility.City"]
      rating_mortality = row["Rating.Mortality"]
      clinics << { name: name, address: address, number: number, year: year, clinic_type: clinic_type, city: city, rating_mortality: rating_mortality }
    end
    puts "Adding #{clinics.count} clinics to the database..."

    clinics.each do |clinic|
      Clinic.create(name: clinic[:name], address: clinic[:address], number: clinic[:number], year: clinic[:year], clinic_type: clinic[:clinic_type], city: clinic[:city], RatingMortality: clinic[:rating_mortality])
    end

    puts "Done."
  end
end