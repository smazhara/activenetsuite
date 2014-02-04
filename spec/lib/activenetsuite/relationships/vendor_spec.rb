require 'spec_helper'

describe Vendor do
  let(:model) { Vendor.new }

  describe '#partner' do
    subject { model.partner }
    before { model.internal_id = 123 }

    it { should be_a Partner }
    its(:internal_id) { should eq 123 }
    it { should eq model.partner } # memoized
  end
end
