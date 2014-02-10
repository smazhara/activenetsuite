require 'spec_helper'

describe Status do
  let(:status) { described_class.new }

  describe '#success?' do
    subject { status.success? }
    before { status.stub(:xmlattr_isSuccess) { false } }
    it { should be_false }
  end

  describe '#failure?' do
    subject { status.failure? }
    before { status.stub(:xmlattr_isSuccess) { false } }
    it { should be_true }
  end

  describe '#code' do
    subject { status.code }
    before do
      status.stub(:statusDetail) { status_detail }
    end

    context 'when there is statusDetail' do
      let(:status_detail) { [double(code: :code)] }
      it { should be :code }
    end

    context 'when there is no statusDetail' do
      let(:status_detail) { nil }
      it { should be_nil }
    end
  end

  describe '#message' do
    subject { status.message }
    before do
      status.stub(:statusDetail) { status_detail }
    end

    context 'when there is statusDetail' do
      let(:status_detail) { [double(message: :message)] }
      it { should be :message }
    end

    context 'when there is no statusDetail' do
      let(:status_detail) { nil }
      it { should be_nil }
    end
  end

  describe '#duplicate?' do
    subject { status.duplicate? }
    before do
      status.stub(:statusDetail) { [double(code: code)] }
    end

    context 'when code==DUP_ITEM for example' do
      let(:code) { 'DUP_ITEM' }
      it { should be_true }
    end

    context 'when code==COGS_ERROR for example' do
      let(:code) { 'COGS_ERROR' }
      it { should be_false }
    end
  end

  describe '#missing_method' do
    subject { status.send method }
    before do
      status.stub(:statusDetail) { [double(code: code)] }
    end

    context 'when method ends with ? and matches code' do
      let(:method) { :dup_item? }
      let(:code) { 'DUP_ITEM' }
      it { should be_true }
    end

    context 'when method ends with ? and does not match code' do
      let(:method) { :dup_item? }
      let(:code) { 'COGS_ERROR' }
      it { should be_false }
    end

    context 'when method does not end with ?' do
      let(:method) { :missing }
      it 'does not try to evaluate code' do
        status.should_not_receive(:code)
        subject rescue nil
      end
    end
  end
end
