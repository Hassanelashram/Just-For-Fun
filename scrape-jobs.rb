require "open-uri"
require "nokogiri"
require "date"

file_name = "./#{Date.today.strftime("%d-%m")}.html" 
unless File.file?(file_name)
 system("curl https://www.glassdoor.com/Job/switzerland-ruby-on-rails-jobs-SRCH_IL.0,11_IN226_KO12,25.htm > #{file_name}")
end

html = File.open(file_name).read
document = Nokogiri::HTML(html)
descriptions = document.search(".minor").map {|element| element.text unless element.text.length < 10 }

descriptions.each do |desc|
    puts "description: #{desc}"
    puts
end

### TODO
# find relevent ruby jobs
# make search query dynamic
# try to get more data from job descriptions