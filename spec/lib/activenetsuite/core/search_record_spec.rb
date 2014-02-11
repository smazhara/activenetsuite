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
  let(:client) { double search: response }
  let(:response) { double }

  before do
    Record.stub(:client) { client }
    SearchRecord.stub(:inflected_method) { :foo }
  end

  describe '#where' do
    subject { search.where *args }
    let(:args) { double }

    context 'when foo: "bar" given' do
      let(:args) { [{foo: 'bar'}] }

      it { should be_a SearchRecord }
      it { should_not be search }
      its(:foo) { should be_a SearchStringField }
      its('foo.xmlattr_operator') { should eq SearchStringFieldOperator::Is }
      its('foo.searchValue') { 'bar' }
    end

    context 'when foo: 10 given' do
      let(:args) { [{foo: 10} ] }

      it { should be_a SearchRecord }
      it { should_not be search }
      its(:foo) { should be_a SearchLongField }
      its('foo.xmlattr_operator') { should eq SearchLongFieldOperator::EqualTo }
      its('foo.searchValue') { 10 }
    end

    context 'when foo: Date.new(2000, 1, 2) given' do
      let(:args) { [{foo: Date.new(2000, 1, 2)} ] }

      it { should be_a SearchRecord }
      it { should_not be search }
      its(:foo) { should be_a SearchDateField }
      its('foo.xmlattr_operator') { should eq SearchDateFieldOperator::On }
      its('foo.searchValue') { Date.new(2000, 1, 2) }
    end

    context 'when :foo, :has_keywords, "key" given' do
      let(:args) { [:foo, :has_keywords, 'key'] }

      it { should be_a SearchRecord }
      it { should_not be search }
      its(:foo) { should be_a SearchStringField }
      its('foo.xmlattr_operator') { should eq SearchStringFieldOperator::HasKeywords }
      its('foo.searchValue') { 'key' }
    end
  end

  describe '#find_by' do
    subject { search.find_by *args }
  end

  describe 'response delegators' do
    [:page_index, :page_size, :search_id, :total_pages,
      :total_records, :more?, :next, :each].each do |method|

      describe "#{method}" do
        subject { search.send method }
        let(:response) { double method => value }
        let(:value) { double }
        specify do
          client.should_receive(:search).with(search) { response }
          should eq value
        end
      end
    end
  end

  describe '#find_by' do
    subject { search.find_by *args }
    before do
      search.stub(:where).with(args) { response }
    end
    let(:args) { double }
    let(:response) { double first: record }
    let(:record) { double }

    it { should eq record }
  end
end

