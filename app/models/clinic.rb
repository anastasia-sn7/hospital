class Clinic < ApplicationRecord
  self.inheritance_column = 'clinic_type'
  has_many :repartments
  has_many :medcards
  has_many :doctors, through: :repartments
end
