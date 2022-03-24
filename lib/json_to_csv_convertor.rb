# frozen_string_literal: true
require 'csv'
require 'json'
require_relative "json_to_csv_convertor/version"
require_relative 'convert_json'
require_relative 'read_json'

module JsonToCsvConvertor
  class Error < StandardError; end
  
  include ConvertJson
  include ReadJson


  def convert_json_to_csv(json)
    json_to_csv make_json_readable(json)
  end

end