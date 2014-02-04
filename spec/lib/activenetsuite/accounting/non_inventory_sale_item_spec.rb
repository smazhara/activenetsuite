require 'spec_helper'

describe NonInventorySaleItem do
  describe '.basic_search_class' do
    subject { described_class.basic_search_class }
    it { should eq ItemSearchBasic }
  end
end

