class Clinic < ApplicationRecord
  has_many :repartments
  has_many :medcards
  has_many :doctors, through: :repartments
end
