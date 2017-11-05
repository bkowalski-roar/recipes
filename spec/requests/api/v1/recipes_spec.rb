require 'rails_helper'

describe 'Recipe api' do
  let(:recipe) {create :recipe}
  let(:recipe_with_stages) { create :recipe_with_stages }

  before do
    recipe
    recipe_with_stages
  end

  it 'retrieves recipe list' do

    get '/api/v1/recipes'

    expect(response).to be_succes
    expect(json[0]['title']).not_to be_nil
    expect(json[0]['slug']).not_to be_nil
  end

  it 'shows single recipe' do
    get "/api/v1/recipes/#{recipe.slug}"

    expect(response).to be_succes

    expect(json['title']).not_to be_nil
    expect(json['slug']).to be_nil
    expect(json['stages']).not_to be_nil
  end

  it 'loads recipe stages' do
    get "/api/v1/recipes/#{recipe_with_stages.slug}/stages/#{recipe_with_stages.stages.first.id}"

    expect(response).to be_succes
    expect(json['title']).not_to be_nil
    expect(json['steps']).not_to be_nil
  end

end