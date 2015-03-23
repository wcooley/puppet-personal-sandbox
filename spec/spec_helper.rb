require 'puppetlabs_spec_helper/module_spec_helper'

RSpec.configure do |c|
  c.add_setting :hiera_config, :default => 'spec/fixtures/hiera/hiera.yaml'
end
