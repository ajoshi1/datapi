require 'rails_helper'

describe 'data_models/index.html.erb' do
  let(:first_data_model)  { double(:data_model, id: 1, name: 'Fraud detection', created_at: Time.now, updated_at: Time.now, description: 'test desctiption') }
  let(:second_data_model) { double(:data_model, id: 2, name: 'Beer Daiper Detector', created_at: Time.now, updated_at: Time.now, description: 'test desctiption') }
  let(:third_data_model)  { double(:data_model, id: 3, name: 'Food Recommender', created_at: Time.now, updated_at: Time.now, description: 'test desctiption') }

  let(:data_models)       { [ first_data_model, second_data_model, third_data_model ] }

  before do
    assign(:data_models, data_models)
    render
  end

  it 'has the name of the first model' do
    expect(rendered).to(have_tag(:td, content: first_data_model.name))
  end

  it 'has the name of the second model' do
    expect(rendered).to(have_tag(:td, content: second_data_model.name))
  end

  it 'has the name of the third model' do
    expect(rendered).to(have_tag(:td, content: third_data_model.name))
  end
end
