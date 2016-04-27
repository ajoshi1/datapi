require 'rails_helper'

describe 'data_models/show.html.erb' do
  let(:data_model)  { double(:data_model, name: 'Fraud detection', created_at: Time.now, updated_at: Time.now, description: 'this is a test description') }

  before do
    assign(:data_model, data_model)
    render
  end

  subject { rendered }

  it { is_expected.to(have_tag(:li, content: data_model.name)) }
  it { is_expected.to(have_tag(:li, content: data_model.created_at)) }
  it { is_expected.to(have_tag(:li, content: data_model.updated_at)) }
  it { is_expected.to(have_tag(:li, content: data_model.description)) }

end
