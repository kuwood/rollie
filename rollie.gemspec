$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require "rollie/version"

Gem::Specification.new do |s|
  s.name = "rollie"
  s.version = Rollie::VERSION
  s.license = "MIT"

  s.summary = "Generic rate limiter backed by Redis for efficient limiting using sliding windows."
  s.description = s.summary

  s.authors = ["Zach Davis"]
  s.email = "zldavis@gmail.com"
  s.homepage = "https://github.com/zldavis/rollie"

  s.files = `git ls-files -z`.split("\x0")
  s.test_files = `git ls-files -- test/*`.split("\n")

  s.require_paths = ["lib"]

  s.add_dependency "redis", "~> 4.0"
  s.add_dependency "redis-namespace", "~> 1.6"
  s.add_dependency "connection_pool", "~> 2.2"
end
