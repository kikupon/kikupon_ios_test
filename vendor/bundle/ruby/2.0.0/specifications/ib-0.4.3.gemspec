# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "ib"
  s.version = "0.4.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Yury Korolev", "Francis Chong"]
  s.date = "2013-12-03"
  s.description = "Magic rubymotion ib outlets support"
  s.email = ["yury.korolev@gmail.com", "francis@ignition.hk"]
  s.executables = ["ib"]
  s.files = ["bin/ib"]
  s.homepage = "https://github.com/yury/ib"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "Small portion of love to interface builder with rubymotion"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<xcodeproj>, [">= 0.11.1"])
      s.add_runtime_dependency(%q<thor>, [">= 0.15.4"])
      s.add_runtime_dependency(%q<tilt>, [">= 1.4.1"])
      s.add_development_dependency(%q<rspec>, [">= 2.0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<xcodeproj>, [">= 0.11.1"])
      s.add_dependency(%q<thor>, [">= 0.15.4"])
      s.add_dependency(%q<tilt>, [">= 1.4.1"])
      s.add_dependency(%q<rspec>, [">= 2.0"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<xcodeproj>, [">= 0.11.1"])
    s.add_dependency(%q<thor>, [">= 0.15.4"])
    s.add_dependency(%q<tilt>, [">= 1.4.1"])
    s.add_dependency(%q<rspec>, [">= 2.0"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
