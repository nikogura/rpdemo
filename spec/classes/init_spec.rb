require 'spec_helper'
describe 'rpdemo' do

  context 'with defaults for all parameters' do
    it { should contain_class('rpdemo') }
  end
end
