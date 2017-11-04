require 'rails_helper'

describe 'Recipe api' do
  let(:recipe) { FactoryBot.create :recipe }

  it 'retrieves recipe list' do
    recipe
    get '/api/v1/recipes'
    json = JSON.parse(response.body)

    expect(response).to be_succes
    expect(json[0]['slug']).not_to be_nil

  end
end