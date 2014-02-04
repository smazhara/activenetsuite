require 'spec_helper'

describe CashRefund do
  let(:model) { CashRefund.new }

  describe '.basic_search_class' do
    subject { described_class.basic_search_class }
    it { should be ActiveNetsuite::TransactionSearchBasic }
  end
end
