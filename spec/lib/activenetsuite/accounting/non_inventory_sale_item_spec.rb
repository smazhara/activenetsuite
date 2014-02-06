require 'spec_helper'

describe NonInventorySaleItem do
  let(:item) { described_class.new }

  describe '.basic_search_class' do
    subject { described_class.basic_search_class }
    it { should eq ItemSearchBasic }
  end

  describe '#income_account' do
    subject { item.income_account }

    before do
      item.incomeAccount = RecordRef.new
      item.incomeAccount.internal_id = 123
      item.incomeAccount.external_id = 456
    end

    it { should be_a RecordRef }
    its(:external_id) { should eq 456 }
    its(:internal_id) { should eq 123 }
    its(:type) { should eq 'account' }
  end
end

