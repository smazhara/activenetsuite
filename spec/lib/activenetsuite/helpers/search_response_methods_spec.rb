require 'spec_helper'

describe SearchResponseMethods do
  class Response
    include SearchResponseMethods
    attr_accessor :records
  end
  let(:response) { Response.new }
  before do
    response.stub(
      status: status,
      result: result
    )
  end
  let(:status) { double }
  let(:result) { double }

  describe '#each' do
    subject { response.each }
    before { response.records = [1,2,3] }
    its(:to_a) { should eq [1,2,3] }
  end

  describe '#success?' do
    subject { response.success? }
    let(:status) { double xmlattr_isSuccess: true }
    it { should be_true }
  end

  describe ":[]" do
    subject { response[3] }
    before { response.stub(:records) { [5,6,7,8,9] } }
    it { should eq 8 }
  end

  describe '#next' do
    subject { response.next }
    before do
      response.stub(:result) do
        double page_index: 5
      end
      Record.client = double
    end

    it do
      Record.client.should_receive(:search_next).with(response, 6)
      subject
    end
  end
end
