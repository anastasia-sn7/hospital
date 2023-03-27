class Medcard < ApplicationRecord
  belongs_to :pacient
  belongs_to :clinic
end
