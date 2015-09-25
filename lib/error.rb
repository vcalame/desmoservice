module Desmoservice
class Error
  attr_reader :key, :parameter, :value
  
  def initialize(key, parameter = nil, value = nil)
    @key = key
    @parameter = parameter
    @value = value
  end

  def self.from_json_hash(json_hash)
    Error.new(json_hash['key'], json_hash['parameter'], json_hash['value'])
  end
end
end