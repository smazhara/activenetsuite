require 'spec_helper'

describe SearchResult do
  let(:result) { SearchResult.new }

  describe '#has_more?' do
    subject { result.has_more? }
    before do
      result.page_index = page_index
      result.total_pages = total_pages
    end

    context 'when page_index < total_pages' do
      let(:page_index) { 10 }
      let(:total_pages) { 20 }
      it { should be_true }
    end

    context 'when page_index = total_pages' do
      let(:page_index) { 10 }
      let(:total_pages) { 10 }
      it { should be_false }
    end
  end
end

