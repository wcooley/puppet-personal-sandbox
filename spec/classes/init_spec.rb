require 'spec_helper'

describe 'sandbox' do
  context 'defaults' do
    #let(:facts) {{ :osfamily => 'RedHat' }}
    it { should compile }
  end
end
