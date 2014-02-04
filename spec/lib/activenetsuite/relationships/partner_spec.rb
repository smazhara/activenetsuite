require 'spec_helper'

describe Partner do
  let(:model) { Partner.new }
  before do
    model.internal_id = 123
  end

  describe '#vendor' do
    subject { model.vendor }

    it { should be_a Vendor }
    its(:internal_id) { should eq 123 }
    it { should be model.vendor } # memoized
  end

  describe '#eligible_for_commission?' do
    subject { model.eligible_for_commission? }
    before { model.eligible_for_commission = :yes }
    it { should eq :yes }
  end
end
