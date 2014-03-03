# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "sugarcube"
  s.version = "1.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Colin T.A. Gray", "Thom Parkin", "Katsuyoshi Ito", "Michael Erasmus"]
  s.date = "2014-01-24"
  s.description = "== Description\n\nCocoaTouch/iOS is a *verbose* framework.  These extensions hope to make\ndevelopment in rubymotion more enjoyable by tacking \"UI\" methods onto the\nbase classes (String, Fixnum, Float).  With sugarcube, you can create a\ncolor from an integer or symbol, or create a UIFont or UIImage from a\nstring.\n\nSome UI classes are opened up as well, like adding the <tt><<</tt> operator to a\n<tt>UIView</tt> instance, instead of <tt>view.addSubview(subview)</tt>, you can\nuse the more idiomatic: <tt>view << subview</tt>.\n"
  s.email = ["colinta@gmail.com"]
  s.homepage = "https://github.com/rubymotion/sugarcube"
  s.licenses = ["BSD"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "Extensions for Ruby to make Rubymotion development more enjoyable, and hopefully more rubyesque!"
end
