require 'rails_helper'

describe 'data_models/show.html.erb' do
  let(:data_model)  { double(:data_model, name: 'Fraud detection', created_at: Time.now, updated_at: Time.now) }

  before do
    assign(:data_model, data_model)
    render
  end

  it 'has the name of the model' do
    expect(rendered).to(have_tag(:li, content: data_model.name))
  end

  it 'has the created_at of the model' do
    expect(rendered).to(have_tag(:li, content: data_model.created_at))
  end

  it 'has the updated_at of the model' do
    expect(rendered).to(have_tag(:li, content: data_model.updated_at))
  end
end
