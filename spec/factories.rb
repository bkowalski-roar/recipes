FactoryBot.define do
  factory :recipe do
    title 'sth'
    description 'sth'
    sequence :slug do |n|
      "sth#{n}"
    end

    association :stages, factory: :stage
    after_create do |recipe|
      recipe.stages << create(:stage, 3)
    end
  end

  factory :stage do
    sequence :title do |n|
      "stage#{n}"
    end
  end
end