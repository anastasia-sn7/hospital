class DoctorsController < ApplicationController
  PER_PAGE = 10
  def index
    @page = params.fetch(:page, 0).to_i
    @doctors = Doctor.offset(@page*PER_PAGE).limit(PER_PAGE)
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  def new
    @doctor = Doctor.new
  end

  def edit
    @doctor = Doctor.find(params[:id])
  end

  def destroy
    @doctor = Doctor.find(params[:id])
    @doctor.destroy
    redirect_to doctors_path, notice: "Doctor was successfully destroyed."
  end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      redirect_to doctors_path, notice: "Doctor was successfully created."
    else
      render :new
    end
  end

  def update
    @doctor = Doctor.find(params[:id])
    if @doctor.update(doctor_params)
      redirect_to doctors_path, notice: "Doctors was successfully updated."
    else
      render :edit
    end
  end

  private
  def doctor_params
    params.require(:doctor).permit(:doctor_id, :name, :experience_in_years, :repartment_id, :specialization_id)
  end
end
