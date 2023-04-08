json.extract! clinic, :id, :clinic_id, :name, :address, :number, :created_at, :updated_at, :year
json.url clinic_url(clinic, format: :json)
