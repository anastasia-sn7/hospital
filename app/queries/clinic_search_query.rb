class ClinicSearchQuery
  def self.call(params)
    clinics = Clinic.all
    clinics = clinics.where(name: params[:name]) if params[:name].present?
    clinics = clinics.where('name LIKE ?', "%#{params[:search]}") if params[:name].present?
    clinics.order(created_at: :desc)
  end
end
