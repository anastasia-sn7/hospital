class ClinicsController < ApplicationController
  def index
    @clinics = Clinic.all
  end

  def create
    @clinic = Clinic.create params[clinic_params]
    redirect_to clinics_path
  end

  def update
    @clinic = @clinics.find(params[:id])
    @clinic.update!(clinic_params)
    redirect_to clinics_path
  end

  private
  def clinic_params
    params.require(:clinic).permit(:name)
  end

end
