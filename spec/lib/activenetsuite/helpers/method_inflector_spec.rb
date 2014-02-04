require 'spec_helper'

describe MethodInflector do
  class Model
    include MethodInflector

    attr_accessor :xmlattr_internalId, :xmlattr_externalId

    attr_reader :fooBarBaz
    attr_reader :isCool
    attr_reader :customFieldList
  end

  let(:model) { Model.new }

  describe '#method_missing' do
    subject { model.method_missing method, args, block }
    let(:args) { double }
    let(:block) { double }
    let(:result) { double }

    context 'when it is one of the xmlattr_ methods' do
      context 'when method is internal_id' do
        let(:method) { :internal_id }
        it do
          model.should_receive(:xmlattr_internalId) { result }
          should eq result
        end
      end

      context 'when method is external_id' do
        let(:method) { :external_id }
        it do
          model.should_receive(:xmlattr_externalId) { result }
          should eq result
        end
      end

      context 'when method is internal_id=' do
        let(:method) { :internal_id= }
        it do
          model.should_receive(:xmlattr_internalId=) { result }
          should eq result
        end
      end

      context 'when method is external_id=' do
        let(:method) { :external_id= }
        it do
          model.should_receive(:xmlattr_externalId=) { result }
          should eq result
        end
      end
    end

    context 'when it is a `regular` method' do
      let(:method) { :foo_bar_baz }
      it do
        model.should_receive(:fooBarBaz) { result }
        should eq result
      end
    end

    context 'when it is a boolean is_ method' do
      let(:method) { :cool? }
      it do
        model.should_receive(:isCool) { result }
        should eq result
      end
    end

    context 'when it is a `special` method' do
      let(:method) { :custom_fields }
      it do
        model.should_receive(:customFieldList) { result }
        should eq result
      end
    end

    context 'non existing method' do
      let(:method) { :does_not_exist }
      it { expect { subject }.to raise_error NameError }
    end
  end
end
