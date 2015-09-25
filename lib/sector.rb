module Desmoservice

class Sector < Term
  
  attr_reader :subsectors, :members
  
  def initialize(data)
    super(data['terme'])
    @subsectors = Array.new
    @members = Array.new
    if data.has_key?('liaisonArray')
      data['liaisonArray'].each {|v| @members << SectorTerm.new(v)}
    end
  end
  
  def get_subsector_by_id(id)
    subsectors.each do |subsector|
      if subsector.id == id
        return subsector
      end
      subsubsector = subsector.get_subsector_by_id(id)
      if not subsubsector.nil?
        return subsubsector
      end
    end
    return nil
  end
  
end

class SectorTerm < Term
  
  attr_reader :position
  
  def initialize(data)
    super(data['terme'])
    @position = data['position']
  end
  
end

end