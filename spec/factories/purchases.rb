FactoryBot.define do
  factory :purchase do
    invoice_number { "MyString" }
    date { "MyString" }
    payment_type { "MyString" }
    total_amount { "MyString" }
    status { 1 }
    client { nil }
    currency { nil }
  end
end
