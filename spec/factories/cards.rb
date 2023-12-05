FactoryBot.define do
  factory :card do
    name { "MyString" }
    number { "MyText" }
    cvv { "MyString" }
    card_type { 1 }
    clients { nil }
  end
end
