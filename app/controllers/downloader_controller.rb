class DownloaderController < ApplicationController

  def download
    send_data PdfGenerator.call(Clinic.all),
              filename: "Clinics.pdf",
              type: "application/pdf"
  end

  def downloadAll
    send_data PdfGeneratorAll.call(Clinic.find(params[:id])),
              filename: "#{Clinic.find(params[:id]).name}.pdf",
              type: "application/pdf"
  end

  def downloadUsers
    send_data PdfGeneratorUsers.call(User.all),
              filename: "Users.pdf",
              type: "application/pdf"
  end

  def downloadCsv
    send_data CsvGenerator.call(Clinic.all),
              filename: "Clinics.csv",
              type: "application/csv"
  end

  def clinic_params
    params.require(:clinic).permit(:id)
  end

end