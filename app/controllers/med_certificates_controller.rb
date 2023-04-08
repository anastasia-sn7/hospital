class MedCertificatesController < ApplicationController
  before_action :set_med_certificate, only: %i[ show edit update destroy ]

  # GET /med_certificates or /med_certificates.json
  def index
    @med_certificates = MedCertificate.all
  end

  # GET /med_certificates/1 or /med_certificates/1.json
  # GET /med_certificates/new
  def new
    @med_certificate = MedCertificate.new
  end

  def show
  end

  def edit
  end

  # POST /med_certificates or /med_certificates.json
  def create
    @med_certificate = MedCertificate.new(med_certificate_params)

    respond_to do |format|
      if @med_certificate.save
        format.html { redirect_to med_certificate_url(@med_certificate), notice: "Med certificate was successfully created." }
        format.json { render :show, status: :created, location: @med_certificate }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @med_certificate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /med_certificates/1 or /med_certificates/1.json
  def update
    respond_to do |format|
      if @med_certificate.update(med_certificate_params)
        format.html { redirect_to med_certificate_url(@med_certificate), notice: "Med certificate was successfully updated." }
        format.json { render :show, status: :ok, location: @med_certificate }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @med_certificate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /med_certificates/1 or /med_certificates/1.json
  def destroy
    @med_certificate.destroy

    respond_to do |format|
      format.html { redirect_to med_certificates_url, notice: "Med certificate was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_med_certificate
      @med_certificate = MedCertificate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def med_certificate_params
      params.require(:med_certificate).permit(:doctor_id, :patient_id)
    end
end
