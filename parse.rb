require "csv"
require "json"
require "pry"

filename = "DOC-323008A1"

output = []

def format_challenge(challenge)
  if challenge == "Y"
    return true
  elsif challenge == "N"
    return false
  else
    raise "Challenge not Y or N. This is a problem."
  end
end

CSV.foreach("#{filename}.csv", headers: :first_row) do |row|
  output << {
    fips: row[0],
    state: row[1],
    carrier: row[2],
    challenge: format_challenge(row[3])
  }
end

census_blocks_json = JSON.generate(output)

File.open("#{filename}.json", 'w') {|f| f.write(census_blocks_json)}

census_blocks = JSON.parse(File.open("#{filename}.json").read)

carriers = census_blocks.map {|cb| cb["carrier"]}.uniq

carriers_json = JSON.generate(carriers)

File.open("carriers.json", 'w') {|f| f.write(carriers_json)}

