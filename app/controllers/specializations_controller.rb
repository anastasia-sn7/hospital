class SpecializationsController < ApplicationController
  def index
    @specializations = Specialization.all
  end

  def create
    @specialization = Specialization.create params[specialization_params]
    redirect_to specializations_path
  end

  def update
    @specialization = @specializations.find(params[:id])
    @specialization.update!(specialization_params)
    redirect_to specializations_path
  end

  private
  def specialization_params
    params.require(:specialization).permit(:name)
  end
end
