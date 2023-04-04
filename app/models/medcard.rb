class Medcard < ApplicationRecord
  belongs_to :clinic
  belongs_to :pacient
end
