class MedcardsController < ApplicationController
  before_action :set_medcard, only: %i[ show edit update destroy ]

  # GET /medcards or /medcards.json
  def index
    @medcards = Medcard.all
  end

  # GET /medcards/1 or /medcards/1.json
  def show
  end

  # GET /medcards/new
  def new
    @medcard = Medcard.new
  end

  # GET /medcards/1/edit
  def edit
  end

  # POST /medcards or /medcards.json
  def create
    @medcard = Medcard.new(medcard_params)

    respond_to do |format|
      if @medcard.save
        format.html { redirect_to medcard_url(@medcard), notice: "Medcard was successfully created." }
        format.json { render :show, status: :created, location: @medcard }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @medcard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medcards/1 or /medcards/1.json
  def update
    respond_to do |format|
      if @medcard.update(medcard_params)
        format.html { redirect_to medcard_url(@medcard), notice: "Medcard was successfully updated." }
        format.json { render :show, status: :ok, location: @medcard }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @medcard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medcards/1 or /medcards/1.json
  def destroy
    @medcard.destroy

    respond_to do |format|
      format.html { redirect_to medcards_url, notice: "Medcard was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medcard
      @medcard = Medcard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def medcard_params
      params.require(:medcard).permit(:medcard_id, :name, :year, :pacient_id, :clinic_id)
    end
end
