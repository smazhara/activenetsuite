require 'spec_helper'

describe SearchDate do
  describe '.make' do
    subject { described_class.make :next_week }
    it { should be described_class::NextWeek }
  end
end
