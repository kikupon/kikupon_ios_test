# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "awesome_print_motion"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael Dvorkin"]
  s.date = "2012-10-23"
  s.description = "Great RubyMotion dubugging companion: pretty print RubyMotion objects to visualize their structure"
  s.email = "mike@dvorkin.net"
  s.homepage = "http://github.com/michaeldv/awesome_print_motion"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "Pretty print RubyMotion objects with proper indentation and colors"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<quickie>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<quickie>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<quickie>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end