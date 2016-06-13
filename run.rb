require 'json'
require 'roo'

file = File.open("code.json", "r") 
data = file.read 
hash = JSON.parse(data)

xlsx = Roo::Spreadsheet.open('similar.xlsx')
xlsx.sheet('test').each do |x|
	hash["startUrl"].push("https://pro.similarweb.com/#/website/audience-overview/" + x[0] + "/*/999/3m?webSource=Total")
end

puts hash["startUrl"]
puts "########"
puts "########"
puts hash.to_json
hash = []


