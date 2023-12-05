FactoryBot.define do
  factory :product do
    name { "MyString" }
    name { "MyString" }
    cost { 1.5 }
    vat_rate { 1 }
    status { 1 }
    brand { nil }
    category { nil }
    measure { nil }
    supplier { nil }
  end
end
