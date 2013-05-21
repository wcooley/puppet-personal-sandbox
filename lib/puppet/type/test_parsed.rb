# lib/puppet/type/test_parsed.rb
require 'puppet'
require 'puppet/property'

Puppet::Type.newtype(:test_parsed) do
  ensurable
  newparam(:name, :namevar => true) {}
  newproperty(:data, :parent => Puppet::Property) {}
  newproperty(:target) do
    defaultto { @resource.class.defaultprovider.default_target }
  end
  autorequire(:file) { self[:target] }
end
