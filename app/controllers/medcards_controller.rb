class MedcardsController < ApplicationController
  def index
    @medcards = Medcard.all
  end

  def create
    @medcard = Medcard.create params[medcard_params]
    redirect_to medcards_path
  end

  def update
    @medcard = @medcards.find(params[:id])
    @medcard.update!(medcard_params)
    redirect_to medcards_path
  end

  private
  def medcard_params
    params.require(:medcard).permit(:id)
  end
end
