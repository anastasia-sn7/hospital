class Clinic < ApplicationRecord
  has_many :repartments, :medcards
end
