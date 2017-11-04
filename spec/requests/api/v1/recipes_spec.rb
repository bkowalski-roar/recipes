require 'rails_helper'

describe 'Recipe api' do
  let(:recipe) { FactoryBot.create :recipe }

  it 'retrieves recipe list' do
    recipe
    get 'api/v1/recipes'

    expect(response).to be_succes
  end
end