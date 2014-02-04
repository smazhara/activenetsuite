# -*- encoding: utf-8 -*-
require File.expand_path('../lib/activenetsuite/version', __FILE__)

Gem::Specification.new do |s|
  s.files = `git ls-files`.split("\n")
  s.name = 'activenetsuite'
  s.summary = 'Netsuite Object Mapper.'
  s.version = ActiveNetsuite::VERSION

  s.license = 'MIT'

  s.required_ruby_version = '>= 1.8.6'
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ['Stan Mazhara']
  s.date = %q{2014-01-15}
  s.email = ['akmegran@gmail.com']
  s.extra_rdoc_files = %w(CHANGELOG Manifest.txt)
  s.test_files = `git ls-files -- spec`.split("\n")

  s.add_dependency 'soap4r-ruby1.9'

  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'webmock'
end
