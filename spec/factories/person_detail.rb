require 'faker'
FactoryBot.define do
  factory :person_detail do
    address {"testing address"}
    contry { "INDIA"}
    contact { 1234567789}
    zipcode { 12345}
  end
end