class Clinic < ApplicationRecord
  has_many :repartments
  has_many :medcards
end
