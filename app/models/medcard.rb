class Medcard < ApplicationRecord
  belongs_to :clinic
  has_one :patient
end
