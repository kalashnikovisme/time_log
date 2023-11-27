FactoryBot.define do
  factory :entry do
    comment { Faker::Lorem.sentence }
    time { generate :time }
    task { create :task }
  end
end
