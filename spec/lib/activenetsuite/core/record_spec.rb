require 'spec_helper'

class ActiveNetsuite::Record
  AttrExternalId = XSD::QName.new(nil, "externalId")
  AttrInternalId = XSD::QName.new(nil, "internalId")

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_internalId
    __xmlattr[AttrInternalId]
  end

  def xmlattr_internalId=(value)
    __xmlattr[AttrInternalId] = value
  end

  def xmlattr_externalId
    __xmlattr[AttrExternalId]
  end

  def xmlattr_externalId=(value)
    __xmlattr[AttrExternalId] = value
  end

  attr_accessor :foo
  attr_accessor :bar
  attr_accessor :is_inactive
end

class ActiveNetsuite::RecordSearchBasic; end

describe Record do
  let(:record) { Record.new args }
  let(:args) { nil }
  let(:client) { double }
  before { Record.client = client }

  describe '#add' do
    subject { record.add }

    before do
      record.client.stub(:add) { result }
    end
    let(:result) { double success?: success, internal_id: :internal_id }
    let(:success) { true }

    it { should eq result }

    context 'when success' do
      let(:success) { true }
      it { expect { subject }.to change { record.internal_id }.to(:internal_id) }
    end

    context 'when not success' do
      let(:success) { false }
      it { expect { subject }.to_not \
           change { record.internal_id }.to(:internal_id) }
    end
  end

  describe '#add!' do
    subject { record.add! }

    before do
      record.client.stub(:add) { result }
    end
    let(:result) { double success?: success, internal_id: :internal_id }
    let(:success) { true }

    it { should eq result }

    context 'when success' do
      let(:success) { true }
      it { expect { subject }.to change { record.internal_id }.to(:internal_id) }
    end

    context 'when not success' do
      let(:success) { false }
      it { expect { subject rescue nil }.to_not \
           change { record.internal_id }.to(:internal_id) }
      it { expect { subject }.to raise_error NetsuiteError }
    end

  end

  describe '#update' do
    subject { record.update }

    before { record.client.stub(:update).with(record) { result } }
    let(:result) { double }

    it { should be result }
  end

  describe '#delete' do
    subject { record.delete }

    before do
      client.stub(:delete) { result }
      record.internal_id = 100
    end
    let(:result) { double success?: success }
    let(:success) { true }
    it { should be result }

    context 'when it is success' do
      let(:success) { true }
      it { expect { subject }.to change { record.internal_id }.to(nil) }
    end

    context 'when it is failure' do
      let(:success) { false }
      it { expect { subject }.to_not change { record.internal_id }.from(100) }
    end
  end

  describe '#client' do
    subject { record.client }
    before { record.class.client = client }
    let(:client) { double }

    it { should be client }
  end

  describe '#load' do
    subject { record.load }
    before { record.instance_variable_set(:@loaded, loaded) }
    let(:loaded) { double }

    it { should be record }

    context 'when already loaded' do
      let(:loaded) { true }

      it { should be record }
      it do
        client.should_not_receive(:get)
        subject
      end
    end

    context 'when internal_id is set' do
      let(:loaded) { false }

      before do
        record.internal_id = 123
        client.stub(:get) { double record: result }
      end

      let(:result) do
        double getters: [:foo, :bar],
               foo: :foo,
               bar: :bar
      end

      it { expect { subject }.to change { record.loaded? }.to(true) }
      it { expect { subject }.to change { record.foo }.to(:foo) }
      it { expect { subject }.to change { record.bar }.to(:bar) }
    end
  end

  describe '#loaded?' do
    subject { record.loaded? }
    before { record.instance_variable_set(:@loaded, true) }
    it { should be_true }
  end

  describe '#ref' do
    subject { record.ref }

    it { should be_a RecordRef }
    its(:type) { should eq "record" }
    its(:internal_id) { should eq record.internal_id }
  end

  describe '#setters' do
    subject { record.setters }
    it do
      should include :foo=, :bar=, :nullFieldList=,
                   :xmlattr_externalId=, :xmlattr_internalId=
    end
  end

  describe '#getters' do
    subject { record.getters }
    it do
      should include :foo, :bar, :xmlattr_externalId, :xmlattr_internalId
    end
  end

  describe '.list' do
    subject { described_class.list(objects) }

    let(:ids) { [10, 20] }

    let(:recs) do
      ids.map do |id|
        rec = Record.new
        rec.internal_id = id
        rec
      end
    end

    let(:refs) do
      ids.map do |id|
        ref = RecordRef.new
        ref.internal_id = id
        ref.type = 'record'
        ref
      end
    end

    context 'when internal ids given' do
      let(:objects) { ids }

      it do
        described_class.client.should_receive(:get_list) do |args|
          args == refs
        end
        subject
      end
    end

    context 'when Records given' do
      let(:objects) { recs }

      it do
        described_class.client.should_receive(:get_list) do |args|
          args == refs
        end
        subject
      end
    end

    context 'when Refs given' do
      let(:objects) { refs }

      it do
        described_class.client.should_receive(:get_list) do |args|
          args == refs
        end
        subject
      end
    end
  end

  describe '.delete' do
    subject { described_class.delete(objects) }

    let(:ids) { [10, 20] }

    let(:recs) do
      ids.map do |id|
        rec = Record.new
        rec.internal_id = id
        rec
      end
    end

    let(:refs) do
      ids.map do |id|
        ref = RecordRef.new
        ref.internal_id = id
        ref.type = 'record'
        ref
      end
    end

    context 'when internal ids given' do
      let(:objects) { ids }

      it do
        described_class.client.should_receive(:delete_list) do |args|
          args == refs
        end
        subject
      end
    end

    context 'when Records given' do
      let(:objects) { recs }

      it do
        described_class.client.should_receive(:delete_list) do |args|
          args == refs
        end
        subject
      end
    end

    context 'when Refs given' do
      let(:objects) { refs }

      it do
        described_class.client.should_receive(:delete_list) do |args|
          args == refs
        end
        subject
      end
    end
  end

  describe '.client' do
    subject { Record.client }
    before { Record.client = client }
    it { should be client }
  end

  describe '.client=' do
    subject { Record.client = client }
    before { Record.client = nil }
    it { expect { subject }.to change { Record.client }.to(client) }
  end

  describe '.find' do
    subject { Record.find 123 }
    before { client.stub(:get).with(ref) { response } }
    let :ref do
      ref = RecordRef.new
      ref.type = 'record'
      ref.internal_id = 123
      ref
    end
    let(:response) { double record: record }

    context 'when record found' do
      let(:record) { double }
      it { should eq record }
    end

    context 'when record not found' do
      let(:record) { nil }
      it { expect { subject }.to raise_error NotFoundError,
           'type: record, internal_id: 123, external_id: ' }
    end

    context 'when record found' do
      let(:record) { double }
      it { should be record }
    end
  end

  describe '.find_by_internal_id' do
    subject { Record.find_by_internal_id 123 }
    before { client.stub(:get).with(ref) { response } }
    let :ref do
      ref = RecordRef.new
      ref.type = 'record'
      ref.internal_id = 123
      ref
    end
    let(:response) { double record: :record }
    it { should eq :record }
  end

  describe '.find_by_external_id' do
    subject { Record.find_by_external_id 'boo' }

    before { client.stub(:get).with(ref) { response } }

    let :ref do
      ref = RecordRef.new
      ref.type = 'record'
      ref.external_id = 'boo'
      ref.internal_id = nil
      ref
    end
    let(:response) { double record: record }
    let(:record) { double }

    it { should eq record }
  end

  describe '.basic_search_class' do
    subject { Record.basic_search_class }
    it { should be RecordSearchBasic }
  end

  describe '#active?' do
    subject { record.active? }

    context 'when is_inactive=true' do
      before { record.is_inactive = true }
      it { should be_false }
    end

    context 'when is_inactive=false' do
      before { record.is_inactive = false }
      it { should be_true }
    end
  end

  describe '#save' do
    subject { record.save }
    let :result do
      double success?: true, internal_id: 123
    end
    before do
      client.stub(:add).with(record) { result }
    end

    context 'when new record' do
      before { record.internal_id = nil }
      specify do
        client.should_receive(:add).with(record) { result }
        subject
      end

      it { expect { subject }.to change { record.internal_id }.to(123) }
    end

    context 'when existing record' do
      before { record.internal_id = 123 }
      specify do
        client.should_receive(:update).with(record) { result }
        subject
      end
    end
  end

  describe '#new?' do
    subject { record.new? }
    before { record.internal_id = internal_id }

    context 'when there is no internal_id' do
      let(:internal_id) { nil }
      it { should be_true }
    end

    context 'when there is internal_id' do
      let(:internal_id) { 123 }
      it { should be_false }
    end
  end
end
