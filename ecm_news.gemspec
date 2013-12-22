$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ecm/news/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ecm_news"
  s.version     = Ecm::News::VERSION
  s.authors     = ["Roberto Vasquez Angel"]
  s.email       = ["roberto@vasquez-angel.de"]
  s.homepage    = "https://github.com/robotex82/ecm_news"
  s.summary     = "News module for active admin."
  s.description = "News module for active admin."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.0.0"
  
  # Module dependencies  
  s.add_dependency 'acts_as_markup'
  s.add_dependency 'acts_as_published'
  s.add_dependency 'friendly_id'
  s.add_dependency 'kaminari'
  s.add_dependency 'bootstrap-kaminari-views'
  s.add_dependency 'truncate_html'  
  s.add_development_dependency "sqlite3"

  # Development Server  
  s.add_development_dependency "thin"  
  
  # Documentation
  s.add_development_dependency "yard"
  
  # Active admin
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'coffee-rails' 
  
  # Tests
  s.add_development_dependency 'capybara'    
  s.add_development_dependency 'rspec-rails', '~> 2.12.0'  
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'factory_girl_rails', '~> 1.0'
  
  # Test automation
  # s.add_development_dependency 'guard-rails' # See gemfile for a patched version, for engine support.
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'guard-bundler'  
  s.add_development_dependency 'rb-inotify'
end
