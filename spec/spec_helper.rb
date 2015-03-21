require "rspec-puppet"

fixture_path = File.expand_path File.join(__FILE__, "..", "fixtures")

$: << File.join(fixture_path, 'modules/module-data/lib')

RSpec.configure do |c|
  c.manifest_dir = File.join(fixture_path, "manifests")
  c.module_path  = File.join(fixture_path, "modules")
end
