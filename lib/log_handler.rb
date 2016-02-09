module Desmoservice
class LogHandler

  attr_reader :destination
  
  def initialize(destination)
    @destination = destination
  end
  
  def add_log_message(log_message)
    destination << log_message << "\n"
  end
  
  def new_line()
    destination << "\n"
  end

end

end