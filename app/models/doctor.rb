class Doctor < ApplicationRecord
  belongs_to :repartment
  has_one :specialization
end
