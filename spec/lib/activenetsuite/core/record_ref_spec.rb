require 'spec_helper'

describe RecordRef do
  let(:ref) do
    ref = described_class.new
    ref.type = 'record'
    ref.internal_id = 12
    ref.external_id = 45
    ref
  end

  describe '#==' do
    subject { this == that }

    let :this do
      this = RecordRef.new
      this.internal_id = 12
      this.external_id = 34
      this.type = 'record'
      this
    end

    let :that do
      that = RecordRef.new
      that.internal_id = 12
      that.external_id = 34
      that.type = 'record'
      that
    end

    context 'when all attributes match' do
      it { should be_true }
    end

    context 'when all attributes match' do
      before { that.internal_id = 56 }
      it { should be_false }
    end
  end

  describe '#record' do
    subject { ref.record }

    it { should be_a Record }
    its(:internal_id) { should eq 12 }
    its(:external_id) { should eq 45 }
  end

  describe '#delete' do
    subject { ref.delete }
    it do
      Record.should_receive(:delete).with([ref])
      subject
    end
  end
end
