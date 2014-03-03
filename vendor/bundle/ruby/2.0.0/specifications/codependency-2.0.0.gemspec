# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "codependency"
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jeremy Ruppel"]
  s.date = "2013-04-19"
  s.description = "A pure ruby, comment-based dependency graph"
  s.email = ["jeremy.ruppel@gmail.com"]
  s.homepage = "https://github.com/jeremyruppel/codependency"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "A pure ruby, comment-based dependency graph"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["= 2.12.0"])
      s.add_development_dependency(%q<guard-rspec>, ["= 1.2.1"])
      s.add_development_dependency(%q<rb-fsevent>, ["= 0.9.1"])
      s.add_development_dependency(%q<git-approvals>, ["= 0.2.0"])
    else
      s.add_dependency(%q<rspec>, ["= 2.12.0"])
      s.add_dependency(%q<guard-rspec>, ["= 1.2.1"])
      s.add_dependency(%q<rb-fsevent>, ["= 0.9.1"])
      s.add_dependency(%q<git-approvals>, ["= 0.2.0"])
    end
  else
    s.add_dependency(%q<rspec>, ["= 2.12.0"])
    s.add_dependency(%q<guard-rspec>, ["= 1.2.1"])
    s.add_dependency(%q<rb-fsevent>, ["= 0.9.1"])
    s.add_dependency(%q<git-approvals>, ["= 0.2.0"])
  end
end
