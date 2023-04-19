class ClinicsQuery
  def self.call(params)
    clinics = Clinic.all
    clinics.order(created_at: :desc)
  end
end