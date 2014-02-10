require 'spec_helper'

describe SearchDateFieldOperator do
  describe '.make' do
    subject { described_class.make :not_empty }
    it { should be described_class::NotEmpty }
  end
end
