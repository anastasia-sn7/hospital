class Repartment < ApplicationRecord
  belongs_to :clinic
  has_many :doctors, dependent: :nullify
end
