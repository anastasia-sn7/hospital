json.extract! pacient, :id, :pacient_id, :name, :age, :diagnosis, :created_at, :updated_at
json.url pacient_url(pacient, format: :json)
