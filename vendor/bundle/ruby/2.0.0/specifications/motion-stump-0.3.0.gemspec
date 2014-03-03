# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "motion-stump"
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Francis Chong"]
  s.date = "2013-06-16"
  s.description = "Stubbing and mocking for RubyMotion"
  s.email = ["francis@ignition.hk"]
  s.homepage = "https://github.com/siuying/motion-stump"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "Stubbing and mocking for RubyMotion"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<motion-redgreen>, ["~> 0.1.0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<motion-redgreen>, ["~> 0.1.0"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<motion-redgreen>, ["~> 0.1.0"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
