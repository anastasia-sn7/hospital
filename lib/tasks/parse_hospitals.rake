namespace :parse do
  task :hospitals => :environment do
    require 'nokogiri'
    require 'open-uri'
    require 'faker'

    html = URI.open("https://www.hospitalsafetygrade.org/all-hospitals")
    xpath = "//section[@id='Content']/div/ul/li/a/text()"

    doc = Nokogiri::HTML(html)
    rows = doc.css('section#Content div.column1 ul li a')
    # puts rows

    clinics = []
    rows.each do |row|
      name = row.text.strip
      address = Faker::Address.street_address
      number = rand(10 ** 10).to_s.rjust(10, '0')

      clinics << { name: name, address: address, number: number }
    end

    puts "Adding #{clinics.count} clinics to the database..."

     clinics.each do |clinic|
       Clinic.create(name: clinic[:name], address: clinic[:address], number: clinic[:number])
     end

    puts "Done."
  end
end
