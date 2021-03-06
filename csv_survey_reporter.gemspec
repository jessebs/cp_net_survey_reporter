# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cp_net_survey_reporter/version'

Gem::Specification.new do |spec|
  spec.name          = 'csv_survey_reporter'
  spec.version       = CSVSurveyReporter::VERSION
  spec.authors       = ['Jesse Bowes']
  spec.email         = ['TODO: Write your email address']

  spec.summary       = %q{TODO: Write a short summary, because Rubygems requires one.}
  spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = 'https://github.com/dashingrocket/csv_survey_reporter'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = %w(lib assets)

  spec.add_runtime_dependency 'trollop', '~> 2.0'
  spec.add_runtime_dependency 'chartkick', '~> 1.4'
  spec.add_runtime_dependency 'csv_hasher', '~> 0.1'
  spec.add_runtime_dependency 'hocon', '~> 0.9'

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
end
