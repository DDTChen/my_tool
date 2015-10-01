# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'my_tool/version'

Gem::Specification.new do |spec|
  spec.name          = "my_tool"
  spec.version       = MyTool::VERSION
  spec.authors       = ["DDTChen"]
  spec.email         = ["ddttchen@gmail.com"]

  spec.summary       = %q{build app tool.}
  spec.description   = %q{build app tool.}
  spec.homepage      = "https://github.com/DDTChen/hola"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files = [
    "lib/my_tool.rb",
    "lib/my_tool/icon.rb",
    "lib/my_tool/XcodeprojSetting.rb",
    "lib/my_tool/version.rb",
  ]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "fastimage_resize", "~> 2.0.3"
  spec.add_development_dependency "cucumber", '~> 2.0.2'
  spec.add_development_dependency "xcodeproj", "~> 0.27.2"
end
