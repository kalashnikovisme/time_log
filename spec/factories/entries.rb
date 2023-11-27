FactoryBot.define do
  factory :entry do
    comment { 'Comment' }
    time { '3h 10m' }
    task { create :task }
  end
end
