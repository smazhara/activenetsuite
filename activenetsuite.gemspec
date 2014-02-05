# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = 'activenetsuite'
  s.version = '0.1.0'

  s.required_rubygems_version = Gem::Requirement.new('>= 0') if s.respond_to? :required_rubygems_version=
  s.authors = ['Stan Mazhara']
  s.date = '2014-02-05'
  s.description = 'Netsuite Object Mapper.'
  s.email = ['akmegran@gmail.com']
  s.extra_rdoc_files = ['README.rdoc']
  s.files = `git ls-files`.split("\n")
  s.homepage = 'https://github.com/smazhara/activenetsuite'
  s.licenses = ['MIT']
  s.rdoc_options = ['--main', 'README.rdoc']
  s.require_paths = ['lib']
  s.rubyforge_project = 'activenetsuite'
  s.rubygems_version = '2.0.3'
  s.summary = 'Netsuite Object Mapper.'

  s.add_development_dependency 'rake', ['~> 0.9']
  s.add_development_dependency 'rspec', ['~> 2.14']
  s.add_development_dependency 'simplecov', ['~> 0.8']
  s.add_development_dependency 'webmock', ['~> 1.17']

  s.add_dependency 'soap4r-ruby1.9', ['~> 2.0.5']
  s.add_dependency 'activesupport', ['> 3.2']
end
