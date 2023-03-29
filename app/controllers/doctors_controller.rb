class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def create
    @doctor = Doctor.create params[doctor_params]
    redirect_to doctors_path
  end

  def update
    @doctor = @doctors.find(params[:id])
    @doctor.update!(doctor_params)
    redirect_to doctors_path
  end

  private
  def doctor_params
    params.require(:doctor).permit(:name, :experience_in_years)
  end
end
