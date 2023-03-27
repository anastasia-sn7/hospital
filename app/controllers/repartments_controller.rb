class RepartmentsController < ApplicationController
  before_action :set_repartment, only: %i[ show edit update destroy ]

  # GET /repartments or /repartments.json
  def index
    @repartments = Repartment.all
  end

  # GET /repartments/1 or /repartments/1.json
  def show
  end

  # GET /repartments/new
  def new
    @repartment = Repartment.new
  end

  # GET /repartments/1/edit
  def edit
  end

  # POST /repartments or /repartments.json
  def create
    @repartment = Repartment.new(repartment_params)

    respond_to do |format|
      if @repartment.save
        format.html { redirect_to repartment_url(@repartment), notice: "Repartment was successfully created." }
        format.json { render :show, status: :created, location: @repartment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @repartment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /repartments/1 or /repartments/1.json
  def update
    respond_to do |format|
      if @repartment.update(repartment_params)
        format.html { redirect_to repartment_url(@repartment), notice: "Repartment was successfully updated." }
        format.json { render :show, status: :ok, location: @repartment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @repartment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repartments/1 or /repartments/1.json
  def destroy
    @repartment.destroy

    respond_to do |format|
      format.html { redirect_to repartments_url, notice: "Repartment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repartment
      @repartment = Repartment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def repartment_params
      params.require(:repartment).permit(:repartment_id, :name, :block, :clinic_id)
    end
end
