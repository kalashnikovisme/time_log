FactoryBot.define do
  factory :task do
    title { generate :string }
    description { '<b>Description</b>' }
  end
end
