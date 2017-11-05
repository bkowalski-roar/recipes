require 'rails_helper'

describe 'Create recipe api' do
  it 'creates plain recipe' do
    post '/api/v1/recipes'

    expect(response).to be_succes
    expect(json['title']).not_to be_nil
    expect(json['slug']).to be_nil
    expect(json['stages']).not_to be_nil
    expect(json['created_at']).not_to be_nil
  end
end