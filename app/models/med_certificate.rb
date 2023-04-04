class MedCertificate < ApplicationRecord
  belongs_to :doctor
  belongs_to :pacient
end
