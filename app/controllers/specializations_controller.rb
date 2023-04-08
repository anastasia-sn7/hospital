class SpecializationsController < ApplicationController
  before_action :set_specialization, only: [:show, :edit, :update, :destroy]

  # GET /specializations
  def index
    @specializations = Specialization.all
  end

  # GET /specializations/1
  def show
  end

  # GET /specializations/new
  def new
    @specialization = Specialization.new
  end

  # GET /specializations/1/edit
  def edit
  end

  # POST /specializations
  def create
    @specialization = Specialization.new(specialization_params)

    if @specialization.save
      redirect_to @specialization, notice: 'Specialization was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /specializations/1
  def update
    if @specialization.update(specialization_params)
      redirect_to @specialization, notice: 'Specialization was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /specializations/1
  def destroy
    @specialization.destroy
    redirect_to specializations_url, notice: 'Specialization was successfully destroyed.'
  end

  private
  def set_specialization
    @specialization = Specialization.find(params[:id])
  end

  def specialization_params
    params.require(:specialization).permit(:specialization_id, :name)
  end
end
