FactoryBot.define do
  factory :stage do
    sequence :title do |n|
      "stage#{n}"
    end
    association :recipe
  end

  factory :recipe do
    title 'sth'
    description 'sth'
    sequence :slug do |n|
      "sth#{n}"
    end

    factory :recipe_with_stages do
      transient do
        stage_count 3
      end

      after(:create) do |recipe, evaluator|
        create_list(:stage, evaluator.stage_count, recipe: recipe)
      end
    end
  end
end