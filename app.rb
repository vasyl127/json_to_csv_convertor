require_relative 'lib/json_to_csv_convertor'
include JsonToCsvConvertor

json = JSON.parse(File.open('q.json').read)

puts convert_json_to_csv(json)