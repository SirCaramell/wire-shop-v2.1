# -*- encoding: utf-8 -*-
# stub: swagger-docs 0.2.9 ruby lib

Gem::Specification.new do |s|
  s.name = "swagger-docs"
  s.version = "0.2.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Rich Hollis"]
  s.date = "2016-08-10"
  s.description = "Generates json files for rails apps to use with swagger-ui"
  s.email = ["richhollis@gmail.com"]
  s.homepage = "https://github.com/richhollis/swagger-docs"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "Generates swagger-ui json files for rails apps with APIs. You add the swagger DSL to your controller classes and then run one rake task to generate the json files."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, ["~> 10"])
      s.add_development_dependency(%q<rspec>, ["~> 3"])
      s.add_development_dependency(%q<appraisal>, ["~> 1"])
      s.add_runtime_dependency(%q<rails>, [">= 3"])
      s.add_runtime_dependency(%q<activesupport>, [">= 3"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, ["~> 10"])
      s.add_dependency(%q<rspec>, ["~> 3"])
      s.add_dependency(%q<appraisal>, ["~> 1"])
      s.add_dependency(%q<rails>, [">= 3"])
      s.add_dependency(%q<activesupport>, [">= 3"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, ["~> 10"])
    s.add_dependency(%q<rspec>, ["~> 3"])
    s.add_dependency(%q<appraisal>, ["~> 1"])
    s.add_dependency(%q<rails>, [">= 3"])
    s.add_dependency(%q<activesupport>, [">= 3"])
  end
end
