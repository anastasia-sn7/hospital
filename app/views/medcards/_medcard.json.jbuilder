json.extract! medcard, :id, :medcard_id, :name, :year, :pacient_id, :clinic_id, :created_at, :updated_at
json.url medcard_url(medcard, format: :json)
