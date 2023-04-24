# frozen_string_literal: true
require 'csv'

class CsvGenerator
  def self.call(bussiness_model)
    CSV.generate(headers: true) do |csv|
      csv << %w[hospital address pacients]
      bussiness_model.each do |element|
        pacients = ''
            element.doctors.each do |doctor|
              doctor.med_certificates.each do |med_certificate|
                pacients += "#{med_certificate.pacient.name}; "
              end
            end
        csv << [element.name, element.address, pacients]
      end
    end
  end
end
