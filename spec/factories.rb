FactoryBot.define do
  factory :step do
    sequence :content do |n|
      "lorem ipsum #{n}"
    end

    association :stage
  end

  factory :stage do
    sequence :title do |n|
      "stage#{n}"
    end
    association :recipe

    factory :full_stage do
      transient do
        steps_count 5
      end

      after(:create) do |stage, evaluator|
        create_list(:step, evaluator.steps_count, stage: stage)
      end
    end
  end

  factory :recipe do
    title 'sth'
    description 'sth'
    sequence :slug do |n|
      "sth#{n}"
    end

    factory :full_recipe do
      transient do
        stage_count 3
      end

      after(:create) do |recipe, evaluator|
        create_list(:full_stage, evaluator.stage_count, recipe: recipe)
      end
    end
  end
end