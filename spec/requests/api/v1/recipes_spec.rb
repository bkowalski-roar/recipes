require 'rails_helper'

describe 'Recipe api' do
  let(:recipe) {create :recipe}
  let(:full_recipe) { create :full_recipe }

  before do
    recipe
    full_recipe
  end

  it 'retrieves recipe list' do

    get '/api/v1/recipes'

    expect(response).to be_succes
    expect(json[0]['title']).not_to be_nil
    expect(json[0]['slug']).not_to be_nil
    expect(json[0]['created_at']).to be_nil
  end

  it 'shows single recipe' do
    get "/api/v1/recipes/#{recipe.slug}"

    expect(response).to be_succes

    expect(json['title']).not_to be_nil
    expect(json['slug']).to be_nil
    expect(json['stages']).not_to be_nil
    expect(json['created_at']).not_to be_nil
  end

  it 'loads recipe stages' do
    get "/api/v1/recipes/#{full_recipe.slug}/stages/#{full_recipe.stages.first.id}"

    expect(response).to be_succes
    expect(json['title']).not_to be_nil
    expect(json['steps']).not_to be_nil
  end

  it 'loads recipe steps' do
    get "/api/v1/recipes/#{full_recipe.slug}/stages/#{full_recipe.stages.first.id}/steps"

    expect(response).to be_succes
    expect(json['content']).not_to be_nil
  end

end