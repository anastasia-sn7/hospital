class RepartmentsController < ApplicationController
  def index
    @repartments = Repartment.all
  end

  def show
    @repartment = Repartment.find(params[:id])
  end

  def new
    @repartment = Repartment.new
  end

  def create
    @repartment = Repartment.new(repartment_params)

    if @repartment.save
      redirect_to @repartment, notice: 'Repartment was successfully created.'
    else
      render :new
    end
  end

  def edit
    @repartment = Repartment.find(params[:id])
  end

  def update
    @repartment = Repartment.find(params[:id])
    if @repartment.update(repartment_params)
      redirect_to @repartment, notice: 'Repartment was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @repartment = Repartment.find(params[:id])
    @repartment.destroy
    redirect_to repartments_url, notice: 'Repartment was successfully destroyed.'
  end

  private

  def repartment_params
    params.require(:repartment).permit(:repartment_id, :name, :block, :clinic_id)
  end
end
