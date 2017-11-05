FactoryBot.define do
  factory :step do
    sequence :content do |n|
      "lorem ipsum #{n}"
    end

    association :stage
  end

  factory :ingredient do
    sequence :name do |n|
      "ingredient name no #{n}"
    end
    description 'simple description'
  end

  factory :stage do
    sequence :title do |n|
      "stage#{n}"
    end

    transient do
      count 5
    end

    association :recipe

    trait :with_steps do

      after(:create) do |stage, evaluator|
        create_list(:step, evaluator.count, stage: stage)
      end
    end

    trait :with_ingredients do
      transient do
        ingredient_count 5
      end

      after(:create) do |stage, evaluator|
        create_list(:ingredient, evaluator.count, stages: [stage])
      end
    end
  end

  factory :recipe do
    title 'sth'
    description 'sth'
    published true
    sequence :slug do |n|
      "sth#{n}"
    end

    trait :with_full_stages do
      transient do
        count 3
      end

      after(:create) do |recipe, evaluator|
        create_list(:stage, evaluator.count, :with_steps, :with_ingredients, recipe: recipe)
      end
    end
  end
end