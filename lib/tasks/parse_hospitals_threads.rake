namespace :parse do
  task :hospitals_threads => :environment do
    require 'nokogiri'
    require 'open-uri'
    require 'faker'

    html = URI.open("https://www.hospitalsafetygrade.org/all-hospitals")
    xpath = "//section[@id='Content']/div/ul/li/a/text()"

    doc = Nokogiri::HTML(html)
    rows = doc.css('section#Content div.column1 ul li a')

    clinics = []

    clinic_mutex = Mutex.new
    threads = []

    rows.each_slice(300) do |slice|
      threads << Thread.new(slice) do |thread_rows|
        thread_rows.each do |row|
          name = row.text.strip
          address = Faker::Address.street_address
          number = rand(10 ** 10).to_s.rjust(10, '0')

          clinic_mutex.synchronize do
            clinics << { name: name, address: address, number: number }
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
            Clinic.create(name: clinic[:name], address: clinic[:address], number: clinic[:number])
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