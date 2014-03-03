# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "xcodeproj"
  s.version = "0.14.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Eloy Duran"]
  s.date = "2013-11-01"
  s.description = "Xcodeproj lets you create and modify Xcode projects from Ruby. Script boring management tasks or build Xcode-friendly libraries. Also includes support for Xcode workspaces (.xcworkspace) and configuration files (.xcconfig)."
  s.email = "eloy.de.enige@gmail.com"
  s.executables = ["xcodeproj"]
  s.extensions = ["ext/xcodeproj/Rakefile"]
  s.files = ["bin/xcodeproj", "ext/xcodeproj/Rakefile"]
  s.homepage = "https://github.com/cocoapods/xcodeproj"
  s.licenses = ["MIT"]
  s.rdoc_options = ["-x", "ext/.+\\.(o|bundle)"]
  s.require_paths = ["ext", "lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "Create and modify Xcode projects from Ruby."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rake>, [">= 0"])
      s.add_runtime_dependency(%q<activesupport>, ["~> 3.0"])
      s.add_runtime_dependency(%q<colored>, ["~> 1.2"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<activesupport>, ["~> 3.0"])
      s.add_dependency(%q<colored>, ["~> 1.2"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<activesupport>, ["~> 3.0"])
    s.add_dependency(%q<colored>, ["~> 1.2"])
  end
end
