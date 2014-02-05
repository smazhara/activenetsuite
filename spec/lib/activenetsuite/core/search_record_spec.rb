require 'spec_helper'

describe SearchRecord do
  class SearchRecord
    attr_accessor :foo
  end

  let(:search) do
    search = SearchRecord.new
    search.record_class = Record
    search
  end

  before do
    Record.stub(:client) { client }
    SearchRecord.stub(:inflected_method) { :foo }
  end

  describe '#each' do
    subject { search.each }
    let(:client) { double search: response }
    let(:response) { [:a, :b, :c] }
    it do
      search.response.should_receive(:each).and_yield(response)
      subject
    end
  end

  describe '#where' do
    subject { search.where *args }
    let(:args) { double }

    context 'when foo: "bar" given' do
      let(:args) { [{foo: 'bar'}] }
      let :where do
        where = SearchRecord.new
        where.foo = SearchStringField.new
        where.foo.xmlattr_operator = SearchStringFieldOperator::Is
        where.foo.searchValue = 'bar'
        where
      end

      it { should be_a SearchRecord }
      its(:foo) { should be_a SearchStringField }
      its('foo.xmlattr_operator') { should eq SearchStringFieldOperator::Is }
      its('foo.searchValue') { 'bar' }
    end
  end
end

