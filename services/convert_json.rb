require 'csv'
require 'json'
require_relative 'read_json'

module ConvertJson
  include  ReadJson

  def json_to_csv(json)
    json_rows = ReadJson::make_json_readable(json)
    header_keys = head_colums(json_rows)
    csv_string = CSV.generate do |csv|
      csv << header_keys.keys
      json_rows.each {|row| csv << header_keys.merge(row).values}
    end
    csv_string
  end

  private

  def head_colums(array)
    header_keys = {}
    array.each do |row|
      row.each {|elem| header_keys[elem.first]='' unless header_keys.include?(elem)}
    end
    header_keys
  end
  
end