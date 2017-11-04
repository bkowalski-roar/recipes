require 'rails_helper'

describe 'Recipe api' do
  let(:recipe) { FactoryBot.create :recipe }

  it 'retrieves recipe list' do
    recipe
    get '/api/v1/recipes'

    expect(response).to be_succes
  end

  it 'shows single recipe' do
    get "/api/v1/recipes/#{recipe.slug}"
    json = JSON.parse(response.body)

    expect(response).to be_succes

    expect(json['title']).not_to be_nil
    expect(json['slug']).not_to be_nil
    expect(json['stages']).not_to be_nil
  end
end