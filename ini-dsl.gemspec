Gem::Specification.new do |s|
  s.name        = 'ini-dsl'
  s.version     = '0.0.2'
  s.date        = Date.today.to_s
  s.license     = 'Unlicense'

  s.summary     = '.ini file DSL'
  s.description = '.ini file DSL and generator'

  s.authors     = ['Yota Toyama']
  s.email       = 'raviqqe@gmail.com'
  s.homepage    = 'https://github.com/raviqqe/ini-dsl.rb'

  s.add_dependency 'block-is-hash', '~> 0'

  s.files       = Dir['lib/**/*']
end
