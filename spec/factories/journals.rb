# frozen_string_literal: true

FactoryBot.define do
  factory :journal do
    title { 'My Daily Journal' }
    kind { 'Personal' }
    user
  end
end
