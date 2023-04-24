class PdfGenerator
  def self.call(bussiness_model)
    Prawn::Document.new do
      bussiness_model.each do |element|
        text "________________________"
        text "\nName: #{element.name}"
        text "Address: #{element.address}"
        image "img/cute-photos-of-cats.jpg", :width => 225, :height => 205
        text "\nPacients:\n"
        element.doctors.each do |doctor|
          doctor.med_certificates.each do |med_certificate|
            text "#{med_certificate.pacient.name}"
          end
        end
      end
    end.render
  end

end