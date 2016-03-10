require 'rails_helper'

describe DataModel do
  describe "#name" do
    context 'when the name is present' do
    	let(:subject) { DataModel.new(name: 'foo') }

  	  it 'should be a string' do
  	 	  expect(subject.name).to(be_a(String))
  	  end
    end

    context 'when the name has not been set' do
      let(:subject) { DataModel.new }

      it 'should be nil' do
        expect(subject.name).to(be_nil)
      end
    end
  end
end