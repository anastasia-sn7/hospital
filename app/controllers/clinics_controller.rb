class ClinicsController < ApplicationController
  PER_PAGE = 10

  def index
    @page = params.fetch(:page, 0).to_i
    @clinics = ClinicsQuery.call(params).offset(@page*PER_PAGE).limit(PER_PAGE)
  end

  def show
    @clinic = Clinic.find(params[:id])
  end

  def searchByNames
    @clinics = ClinicSearchQuery.call(params[:name])
  end

  def new
    @clinic = Clinic.new
  end

  def create
    @clinic = Clinic.new(clinic_params)
    if @clinic.save
      redirect_to clinics_path, notice: "Clinic was successfully created."
    else
      render :new
    end
  end

  def edit
    @clinic = Clinic.find(params[:id])
  end

  def destroy
    @clinic = Clinic.find(params[:id])
    @clinic.destroy
    redirect_to clinics_path, notice: "Clinic was successfully destroyed."
  end
  def update
    @clinic = Clinic.find(params[:id])
    if @clinic.update(clinic_params)
      redirect_to clinics_path, notice: "Clinic was successfully updated."
    else
      render :edit
    end
  end

  private
  def clinic_params
    params.require(:clinic).permit(:clinic_id, :name, :address, :number, :year)
  end

end
