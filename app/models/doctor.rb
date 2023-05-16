class Doctor < ApplicationRecord
  belongs_to :repartment
  has_one :specialization, dependent: :nullify
  has_many :med_certificates
  has_many :pacients, through: :med_certificates
end
