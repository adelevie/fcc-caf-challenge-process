require "bundler/setup"
require "goldmine"
require "json"

require "pry"

filename = "DOC-323008A1.json"

census_blocks = JSON.parse(File.open(filename).read)

binding.pry