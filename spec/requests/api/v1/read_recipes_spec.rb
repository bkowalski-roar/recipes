require 'rails_helper'

describe 'Read recipe api' do
  let(:recipe) { create :recipe, :with_full_stages }

  before do
    recipe
  end

  it 'retrieves recipe list' do

    get '/api/v1/recipes'

    expect(response).to be_succes
    json.each do |recipe|
      expect(recipe['title']).not_to be_nil
      expect(recipe['slug']).not_to be_nil
      expect(recipe['created_at']).to be_nil
    end
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
    get "/api/v1/recipes/#{recipe.slug}/stages/#{recipe.stages.first.id}"

    expect(response).to be_succes
    expect(json['title']).not_to be_nil
    expect(json['steps']).not_to be_nil
    expect(json['ingredients']).not_to be_nil
  end

  it 'loads recipe steps' do
    get "/api/v1/recipes/#{recipe.slug}/stages/#{recipe.stages.first.id}/steps"

    expect(response).to be_succes
    json.each { |step| expect(step['content']).not_to be_nil }
  end

end