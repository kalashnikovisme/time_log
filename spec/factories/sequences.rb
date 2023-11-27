# frozen_string_literal: true

FactoryBot.define do
  sequence :string, &:to_s

  sequence :time do |n|
    "#{n}h #{n % 60}m"
  end
end
