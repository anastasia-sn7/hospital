class Pacient < ApplicationRecord
  has_one :medcard
  has_many :med_certificates
  has_many :doctors, through: :med_certificates
end
