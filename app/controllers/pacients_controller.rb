class PacientsController < ApplicationController
  def index
    @pacients = Pacient.all
  end

  def create
    @pacient = Pacient.create params[pacient_params]
    redirect_to pacients_path
  end

  def update
    @pacient = @pacients.find(params[:id])
    @pacient.update!(pacient_params)
    redirect_to pacients_path
  end

  private
  def pacient_params
    params.require(:pacient).permit(:name, :age)
  end
end
