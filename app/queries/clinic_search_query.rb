require 'pry'
class ClinicSearchQuery
  def self.call(params)
    clinics = Clinic.all
    clinics = clinics.where('name LIKE ?', "%#{params[:search]}") if params[:search].present?
    clinics.order(created_at: :desc)
    clinics
  end
end
