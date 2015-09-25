module Desmoservice
class Ventilation
  
  attr_reader :root, :sectors, :error
  
  def initialize
    @sectors = Array.new
  end
  
  def parse_json(json_string)
    data = JSON.parse(json_string)
    if data.has_key?('ventilation')
      @error = nil
      ventilation = data['ventilation']
      if ventilation.has_key?('secteurArray')
        ventilation['secteurArray'].each {|v| @sectors << Sector.new(v)}
      end
      if ventilation.has_key?('root')
        @root  = Term.new(ventilation['root'])
      end
    else 
      if data.has_key?('error')
        @error = Error.from_json_hash(data['error'])
      else
        @error = Error.new("responseError", "response", json_string)
      end
    end
  end
  
  def has_error?
    return (not error.nil?)
  end
  
  def get_sector_by_id(id)
    @sectors.each do |sector|
      if sector.id == id
        return sector
      end
      subsector = sector.get_subsector_by_id(id)
      if not subsector.nil?
        return subsector
      end
    end
    return nil
  end
  
end

end