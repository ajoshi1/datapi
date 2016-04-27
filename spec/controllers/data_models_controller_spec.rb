require 'rails_helper'

describe DataModelsController do
	describe "index" do
    let(:models) { double(:data_models) }

    before do
      allow(DataModel).to(receive(:all)).and_return(models)
    end

    it 'assigns the models to the view' do
      get :index
      expect(assigns[:data_models]).to(eq(models))
    end
  end
end
