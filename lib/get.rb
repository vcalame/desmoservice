module Desmoservice
class Get
  
  def initialize
  end
  
  def self.families(desmoservice_conf, get_params, http: nil, log_handler: nil)
    options = get_params.to_h('familles')
    uri = desmoservice_conf.build_json_uri(options)
    if http.nil?
      json_string = Net::HTTP.get(uri)
    else
      request = Net::HTTP::Get.new(uri)
      response = http.request(request)
      json_string = response.body
    end
    families = Families.new()
    families.parse_json(json_string)
    if not log_handler.nil?
      log_handler.add_log_message(uri.to_s)
      log_handler.add_log_message(json_string.force_encoding("UTF-8"))
      log_handler.new_line()
    end
    return families
  end
  
  def self.ventilation(desmoservice_conf, get_params, http: nil, log_handler: nil)
    options = get_params.to_h('ventilation')
    uri = desmoservice_conf.build_json_uri(options)
    if http.nil?
      json_string = Net::HTTP.get(uri)
    else
      request = Net::HTTP::Get.new(uri)
      response = http.request(request)
      json_string = response.body
    end
    ventilation = Ventilation.new()
    ventilation.parse_json(json_string)
    if not log_handler.nil?
      log_handler.add_log_message(uri.to_s)
      log_handler.add_log_message(json_string.force_encoding("UTF-8"))
      log_handler.new_line()
    end
    return ventilation
  end
  
  def self.word_distribution(desmoservice_conf, get_params, http: nil, log_handler: nil)
    options = get_params.to_h('lexiedistribution')
    uri = desmoservice_conf.build_json_uri(options)
    if http.nil?
      json_string = Net::HTTP.get(uri)
    else
      request = Net::HTTP::Get.new(uri)
      response = http.request(request)
      json_string = response.body
    end
    word_distribution = WordDistribution.new()
    word_distribution.parse_json(json_string)
    if not log_handler.nil?
      log_handler.add_log_message(uri.to_s)
      log_handler.add_log_message(json_string.force_encoding("UTF-8"))
      log_handler.new_line()
    end
    return word_distribution
  end
  
  def self.terms(desmoservice_conf, get_params, http: nil, log_handler: nil)
    options = get_params.to_h('terms')
    uri = desmoservice_conf.build_json_uri(options)
    if http.nil?
      json_string = Net::HTTP.get(uri)
    else
      request = Net::HTTP::Get.new(uri)
      response = http.request(request)
      json_string = response.body
    end
    terms = Terms.new()
    terms.parse_json(json_string)
    if not log_handler.nil?
      log_handler.add_log_message(uri.to_s)
      log_handler.add_log_message(json_string.force_encoding("UTF-8"))
      log_handler.new_line()
    end
    return terms
  end
  
end

end