class PdfGeneratorAll
  def self.call(element)
    Prawn::Document.new do
      fill_color "7777bb"
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
    end.render
  end

end