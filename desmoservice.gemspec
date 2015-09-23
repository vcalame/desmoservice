Gem::Specification.new do |s|
  s.name        = 'desmoservice'
  s.version     = '0.1.0'
  s.date        = '2015-09-23'
  s.license     = 'Ruby'
  s.summary     = 'Read and write access to Desmoservice API'
  s.description = 'Manage the connection to Desmoservice server, convert JSON to ruby objects and build XML for edition'
  s.author      = 'Vincent Calame'
  s.email       = 'vincent.calame@exemole.fr'
  s.platform    = Gem::Platform::RUBY
  s.required_ruby_version = '>=2.0'
  s.files       = Dir['**/**']
  s.homepage    = 'https://github.com/vcalame/desmoservice'
end