require 'rails_helper'

describe 'Recipe api' do
  let(:recipe) { create :recipe }
  let(:recipes) { create :recipe, 10 }

  it 'retrieves recipe list' do
    recipe
    get '/api/v1/recipes'

    binding.pry

    expect(response).to be_succes
    expect(json[0]['title']).not_to be_nil
    expect(json[0]['slug']).not_to be_nil
    expect(json[0]['stages']).to be_nil
  end

  it 'shows single recipe' do
    get "/api/v1/recipes/#{recipe.slug}"

    expect(response).to be_succes

    expect(json['title']).not_to be_nil
    expect(json['slug']).not_to be_nil
    expect(json['stages']).not_to be_nil
  end
end