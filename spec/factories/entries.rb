FactoryBot.define do
  factory :entry do
    comment { Faker::Lorem.sentence }
    time
    task { create :task }
  end
end
