class PdfGeneratorUsers
  def self.call(bussiness_model)
    Prawn::Document.new do
      bussiness_model.each do |element|
        text "________________________"
        text "\nEmail: #{element.email}", :color => "0000aa"
      end
    end.render
  end

end