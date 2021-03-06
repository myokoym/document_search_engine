$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "document_search_engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "document_search_engine"
  s.version     = DocumentSearchEngine::VERSION
  s.authors     = ["Masafumi Yokoyama"]
  s.email       = ["myokoym@gmail.com"]
  s.homepage    = "https://github.com/myokoym/document_search_engine"
  s.summary     = "A sample of Mroonga on Rails Engine."
  s.description = s.summary
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5"
  s.add_dependency "therubyracer"

  s.add_development_dependency "mysql2"
end
