class MedcardsController < ApplicationController

  def index
    @medcards = Medcard.all
  end

  def show
    @medcard = Medcard.find(params[:id])
  end

  def new
    @medcard = Medcard.new
  end

  def create
    @medcard = Medcard.new(medcard_params)
    if @medcard.save
      redirect_to medcards_path, notice: "Medcard was successfully created."
    else
      render :new
    end
  end

  def edit
    @medcard = Medcard.find(params[:id])
  end

  def update
    @medcard = Medcard.find(params[:id])
    if @medcard.update(medcard_params)
      redirect_to medcards_path, notice: "Medcard was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @medcard = Medcard.find(params[:id])
    @medcard.destroy
    redirect_to medcards_path, notice: "Medcard was successfully destroyed."
  end

  private

  def medcard_params
    params.require(:medcard).permit(:medcard_id, :name, :year, :pacient_id, :clinic_id)
  end

end
