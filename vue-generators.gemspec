$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "vue/generators/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "vue-generators"
  spec.version     = Vue::Generators::VERSION
  spec.authors     = ["John Naegle"]
  spec.email       = ["john.naegle@gmail.com"]
  spec.homepage    = "https://github.com/GoodMeasuresLLC/vue-generators"
  spec.summary     = "Generatoes Vue components and mix-ins for Rails projects using VueJS"
  spec.description = "Opinionated generation of vue components and mixins within the Rails framework"
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md", "CHANGELOG.md", "CODE_OF_CONDUCT.md"]

  spec.add_dependency "rails", "~> 5.2.0"

  spec.add_development_dependency "sqlite3"
end
