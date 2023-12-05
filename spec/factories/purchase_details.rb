FactoryBot.define do
  factory :purchase_detail do
    quantity { "MyString" }
    purchase { nil }
    product { nil }
  end
end
