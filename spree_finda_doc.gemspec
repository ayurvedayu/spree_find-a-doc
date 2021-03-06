# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_finda_doc'
  s.version     = '2.3.4.beta16'
  s.summary     = 'Extension for internal use in Ayurvedayu'
  s.description = 'Doctor search extension for Ayurvedayu'
  s.required_ruby_version = '>= 1.9.3'

  s.author    = 'Anton Murygin'
  s.email     = 'mibus32@gmail.com'
  # s.homepage  = 'http://www.spreecommerce.com'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 2.3.4'
  s.add_dependency 'deface', '~> 1.0.0rc3'
  s.add_dependency 'geocoder', '~> 1.2'
  s.add_dependency 'bootstrap-sass', '~> 3.2.0'
  s.add_dependency 'jquery-ui-rails'
  s.add_dependency 'haml-rails'
  s.add_dependency 'aws-sdk'
  s.add_dependency 'nested_form_fields'


  s.add_development_dependency 'capybara', '~> 2.4'
  # s.add_development_dependency 'bootstrap-sass', '~> 3.3.3'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.5'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 3.1'
  s.add_development_dependency 'sass-rails', '~> 4.0.2'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end
