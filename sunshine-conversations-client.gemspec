# -*- encoding: utf-8 -*-

=begin
#Sunshine Conversations API

The version of the OpenAPI document: 14.4.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

$:.push File.expand_path("../lib", __FILE__)
require "sunshine-conversations-client/version"

Gem::Specification.new do |s|
  s.name        = "sunshine-conversations-client"
  s.version     = SunshineConversationsClient::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Sunshine Conversations"]
  s.email       = [""]
  s.homepage    = "https://github.com/zendesk/sunshine-conversations-ruby"
  s.summary     = "Sunshine Conversations API Ruby Gem"
  s.description = "This gem maps to the Sunshine Conversations API"
  s.license     = 'Apache-2.0'
  s.required_ruby_version = ">= 1.9"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'
  s.add_runtime_dependency 'json', '~> 2.1', '>= 2.1.0'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
