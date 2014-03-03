# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "webstub"
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Matt Green"]
  s.date = "2013-11-16"
  s.description = "Easily stub out HTTP responses in RubyMotion specs"
  s.email = ["mattgreenrocks@gmail.com"]
  s.homepage = "https://github.com/mattgreen/webstub"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "Easily stub out HTTP responses in RubyMotion specs"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rubygems-tasks>, [">= 0"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rubygems-tasks>, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rubygems-tasks>, [">= 0"])
  end
end
