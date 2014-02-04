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
end

class ActiveNetsuite::RecordSearchBasic; end

describe Record do
  let(:model) { Record.new args }
  let(:args) { nil }
  let(:client) { double }
  before { Record.client = client }

  describe '#add' do
    subject { model.add }

    before do
      model.client.stub(:add) { result }
    end
    let(:result) { double success?: success, internal_id: :internal_id }
    let(:success) { true }

    it { should eq result }

    context 'when success' do
      let(:success) { true }
      it { expect { subject }.to change { model.internal_id }.to(:internal_id) }
    end

    context 'when not success' do
      let(:success) { false }
      it { expect { subject }.to_not \
           change { model.internal_id }.to(:internal_id) }
    end
  end

  describe '#update' do
    subject { model.update }

    before { model.client.stub(:update).with(model) { result } }
    let(:result) { double }

    it { should be result }
  end

  describe '#delete' do
    subject { model.delete }

    before do
      client.stub(:delete) { result }
      model.internal_id = 100
    end
    let(:result) { double success?: success }
    let(:success) { true }
    it { should be result }

    context 'when it is success' do
      let(:success) { true }
      it { expect { subject }.to change { model.internal_id }.to(nil) }
    end

    context 'when it is failure' do
      let(:success) { false }
      it { expect { subject }.to_not change { model.internal_id }.from(100) }
    end
  end

  describe '#client' do
    subject { model.client }
    before { model.class.client = client }
    let(:client) { double }

    it { should be client }
  end

  describe '#load' do
    subject { model.load }
    before { model.instance_variable_set(:@loaded, loaded) }
    let(:loaded) { double }

    it { should be model }

    context 'when already loaded' do
      let(:loaded) { true }

      it { should be model }
      it do
        client.should_not_receive(:get)
        subject
      end
    end

    context 'when internal_id is set' do
      let(:loaded) { false }

      before do
        model.internal_id = 123
        client.stub(:get) { double record: record }
      end

      let(:record) do
        double getters: %i(foo bar),
               foo: :foo,
               bar: :bar
      end

      it { expect { subject }.to change { model.loaded? }.to(true) }
      it { expect { subject }.to change { model.foo }.to(:foo) }
      it { expect { subject }.to change { model.bar }.to(:bar) }
    end
  end

  describe '#loaded?' do
    subject { model.loaded? }
    before { model.instance_variable_set(:@loaded, true) }
    it { should be_true }
  end

  describe '#ref' do
    subject { model.ref }

    it { should be_a RecordRef }
    its(:type) { should eq "record" }
    its(:internal_id) { should eq model.internal_id }
  end

  describe '#setters' do
    subject { model.setters }
    it do
      should include *%i(foo= bar= nullFieldList=
                   xmlattr_externalId= xmlattr_internalId=)
    end
  end

  describe '#getters' do
    subject { model.getters }
    it do
      should include *%i(foo bar xmlattr_externalId xmlattr_internalId)
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
end
