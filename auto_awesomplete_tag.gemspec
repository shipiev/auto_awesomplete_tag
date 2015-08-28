# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'auto_awesomplete_tag/version'

Gem::Specification.new do |spec|
  spec.name          = 'auto_awesomplete_tag'
  spec.version       = AutoAwesompleteTag::VERSION
  spec.authors       = ['Dmitry Lisichkin']
  spec.email         = ['dima@sb42.ru']
  spec.description   = %q{TODO: Write a gem description}
  spec.summary       = %q{TODO: Write a gem summary}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'auto_awesomplete', '~> 0.0.1'

  spec.add_development_dependency 'bundler', '~> 1.3'
end
