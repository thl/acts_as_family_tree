$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "acts_as_family_tree/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "acts_as_family_tree"
  s.version     = ActsAsFamilyTree::VERSION
  s.authors     = ["Andres Montano"]
  s.email       = ["amontano@virginia.edu"]
  s.homepage    = "http://subjects.kmaps.virginia.edu"
  s.summary     = "ActsAsFamilyTree is a Rails plugin that gives your ActiveRecord methods and associations useful for a family tree type model."
  s.description = "ActsAsFamilyTree is a Rails plugin that gives your ActiveRecord methods and associations useful for a family tree type model."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]
  s.add_dependency 'rails', '~> 4.2.5'
  s.add_development_dependency "sqlite3"
end
