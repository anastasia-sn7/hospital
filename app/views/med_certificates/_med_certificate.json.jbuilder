json.extract! med_certificate, :id, :doctor_id, :patient_id, :created_at, :updated_at
json.url med_certificate_url(med_certificate, format: :json)
