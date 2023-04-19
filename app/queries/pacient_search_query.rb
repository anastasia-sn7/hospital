class PacientSearchQuery
  def self.call(params)
    pacients = Pacient.all
    pacients = pacients.where(name: params[:name]) if params[:name].present?
    pacients = pacients.where('name LIKE ?', "%#{params[:search]}") if params[:name].present?
    pacients.order(created_at: :desc)
  end
end
