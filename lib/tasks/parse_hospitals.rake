namespace :parse do
  task :hospitals => :environment do
    require 'nokogiri'
    require 'open-uri'

    html = URI.open("https://www.hospitalsafetygrade.org/all-hospitals")
    xpath = "//table[@id='tblHospitalList']//tbody/tr"

    doc = Nokogiri::HTML(html)
    puts doc
    rows = doc.xpath(xpath)

    clinics = []
    rows.each do |row|
      puts row
      cells = row.css('td')
      name = cells[1].text.strip
      address = cells[2].text.strip
      number = cells[3].text.strip
      clinics << { name: name, address: address, number: number }
    end

    puts "Adding #{clinics.count} clinics to the database..."

    clinics.each do |clinic|
      Clinic.create(name: clinic[:name], address: clinic[:address], number: clinic[:number])
    end

    puts "Done."
  end
end