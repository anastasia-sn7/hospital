class PacientsController < ApplicationController

  def index
    @pacients = Pacient.all
  end

  def show
    @pacient = Pacient.find(params[:id])
  end

  def new
    @pacient = Pacient.new
  end

  def create
    @pacient = Pacient.new(pacient_params)
    if @pacient.save
      redirect_to pacients_path, notice: "Pacient was successfully created."
    else
      render :new
    end
  end

  def edit
    @pacient = Pacient.find(params[:id])
  end

  def update
    @pacient = Pacient.find(params[:id])
    if @pacient.update(pacient_params)
      redirect_to pacients_path, notice: "Pacient was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @pacient = Pacient.find(params[:id])
    @pacient.destroy
    redirect_to pacients_path, notice: "Pacient was successfully destroyed."
  end

  private

  def pacient_params
    params.require(:pacient).permit(:pacient_id, :name, :age, :diagnosis)
  end

end
