# lib/puppet/provider/test_parsed/parsed.rb
require 'puppet/provider/parsedfile'

Puppet::Type.type(:test_parsed).provide( :parsed, :filetype => :flat,
  :parent => Puppet::Provider::ParsedFile, :default_target => '/tmp/test_parsed1'
) do
  record_line :parsed, :fields => %w{name data}, :separator => /\s+/
end

