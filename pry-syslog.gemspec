# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'pry-syslog/version'

Gem::Specification.new do |spec|
  spec.name     = 'pry-syslog'
  spec.version  = PrySyslog::VERSION
  spec.authors  = ['Sam Stelfox']
  spec.email    = ['sstelfox@bedroomprogrammers.net']
  spec.files    = `git ls-files -z`.split("\x0").reject { |f| f =~ /^spec\// }

  spec.summary      = 'A small gem that hooks the pry history to send ' \
                      'executed commands to syslog for auditing purposes.'
  spec.description  = spec.summary
  spec.homepage     = 'https://github.com/sstelfox/pry_syslog'
  spec.license      = 'MIT'

  spec.require_paths = ['lib']

  spec.add_dependency 'pry', '~> 0.10.0'

  spec.add_development_dependency 'bundler', '~> 1.8'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'simplecov'

  spec.add_development_dependency 'rdoc'
  spec.add_development_dependency 'redcarpet'
  spec.add_development_dependency 'yard'

  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rubocop-rspec'
end
