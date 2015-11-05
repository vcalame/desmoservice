module Desmoservice
class Terms
  include Enumerable
  
  def initialize()
    @array = Array.new
  end
  
  def parse_json(json_string)
    data = JSON.parse(json_string)
    if data.has_key?('terms')
      data['terms'].each {|v| @array << Term.new(v)}
    end
  end
  
  def each
    @array.each do |v|
      yield(v)
    end
  end
  
  def length
    return @array.length
  end
  
  def [](index)
    return @array[index]
  end
end
end