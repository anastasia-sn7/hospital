class Doctor < ApplicationRecord
  belongs_to :repartment
  has_one :specialization
  has_many :med_certificates
  has_many :patients, through: :med_certificates
end
