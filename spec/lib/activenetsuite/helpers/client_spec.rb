require 'spec_helper'

describe Client do
  let(:client) { Client.new }

  describe Client::SearchPreferencesHeaderHandler do
    subject { Client::SearchPreferencesHeaderHandler }

    its(:superclass) { should eq Client::ActiveNetsuiteHeader }
    it { subject::Name.should eq 'searchPreferences' }
    it do
      subject::DefaultPrefs.should == {
        bodyFieldsOnly: false,
        pageSize: 25
      }
    end
  end

  describe Client::PreferencesHeaderHandler do
    subject { Client::PreferencesHeaderHandler }

    its(:superclass) { should eq Client::ActiveNetsuiteHeader }
    it { subject::Name.should eq 'preferences' }
    it do
      subject::DefaultPrefs.should == {
        warningAsError: false,
        ignoreReadOnlyFields: true
      }
    end
  end

  describe Client::PassportHeaderHandler do
    subject { Client::PassportHeaderHandler }

    its(:superclass) { should eq Client::ActiveNetsuiteHeader }
    it { subject::Name.should eq 'passport' }
    it do
      subject::DefaultPrefs.should == {
        account: '',
        email: '',
        password: ''
      }
    end
  end

  describe '#logger' do
    subject { client.logger }
    it { should be_a Logger }
  end

  describe '#get' do
    subject { client.get ref }

    let(:ref) { double }
    let(:res) { double }

    it do
      client.driver.should_receive(:get) do |req|
        req.should be_a GetRequest
        req.baseRef.should eq ref
        res
      end
      should eq res
    end
  end

  describe '#get_all' do
    subject { client.get_all refs }

    let(:refs) { double }
    let(:res) { double }

    it do
      client.driver.should_receive(:getAll) do |req|
        req.should be_a GetAllRequest
        req.record.should eq refs
        res
      end
      should eq res
    end
  end

  describe '#add' do
    subject { client.add rec }

    let(:rec) { double }
    let(:res) { double }

    it do
      client.driver.should_receive(:add) do |req|
        req.should be_a AddRequest
        req.record.should eq rec
        res
      end
      should eq res
    end
  end

  describe '#add_list' do
    subject { client.add_list recs }

    let(:recs) { [double] }
    let(:res) { double }

    it do
      client.driver.should_receive(:addList) do |req|
        req.should be_a AddListRequest
        req.should have(1).record
        req.first.should eq recs.first
        res
      end
      should eq res
    end
  end
end
