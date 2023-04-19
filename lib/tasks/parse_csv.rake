require 'csv'
require 'faker'

namespace :parse do
  task :hospitalsCsv => :environment do
    hospitals = CSV.read('db/hospitals.csv', headers: true)
      hospitals.each do |row|
        clinic = Clinic.new(
          name: Faker::Company.name,
          address: Faker::Address.street_address,
          number: Faker::Number.between(from: 10, to: 10000),
          year: Faker::Number.between(from: 1900, to: Date.today.year),
          clinic_type: row["Facility.Type"],
          city: row["Facility.City"],
          RatingMortality: row["Rating.Mortality"]
        )
        puts clinic
        # clinic.save
      end
  end
end