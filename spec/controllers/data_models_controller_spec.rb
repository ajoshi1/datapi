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

  describe "show" do
    let(:model) { double(:data_model) }

    before do
      allow(DataModel).to(receive(:find).with('1')).and_return(model)
    end

    it 'assigns the model to the view' do
      get :show, id: 1
      expect(assigns[:data_model]).to(eq(model))
    end
  end
end
