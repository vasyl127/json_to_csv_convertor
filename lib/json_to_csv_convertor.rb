# frozen_string_literal: true

require_relative "json_to_csv_convertor/version"
require_relative '../services/convert_json'

module JsonToCsvConvertor
  class Error < StandardError; end
  
  include ConvertJson

  def convert_json_to_csv(json)
    ConvertJson::json_to_csv(json)
  end

end
