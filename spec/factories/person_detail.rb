require 'faker'
FactoryBot.define do
  factory :person_detail do
    title {"testing address"}
    age {12}
    phone { 1234567789}
  end
end