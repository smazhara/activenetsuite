require 'spec_helper'

describe GetDeletedResult do
  let(:result) { described_class.new }

  describe '#records' do
    subject { result.records }
    before { result.deletedRecordList = :list }
    it { should be :list }
  end

  describe '#each' do
    subject { result.each }
    before { result.stub_chain(:deletedRecordList, :each) { :enum } }
    it { should eq :enum }
  end
end
