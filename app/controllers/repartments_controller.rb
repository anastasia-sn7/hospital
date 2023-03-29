class RepartmentsController < ApplicationController
  def index
    @repartments = Repartment.all
  end

  def create
    @repartment = Repartment.create params[repartment_params]
    redirect_to repartments_path
  end

  def update
    @repartment = @repartments.find(params[:id])
    @repartment.update!(repartment_params)
    redirect_to repartments_path
  end

  private
  def repartment_params
    params.require(:repartment).permit(:name)
  end
end
