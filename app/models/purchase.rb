class Purchase < ApplicationRecord
  belongs_to :client
  belongs_to :currency
  has_many :purchase_details
  enum status: %i[active complete]
  enum payment_tipe: %i[cash credit]
  validates :invoice_number, :date, :payment_tipe, :total_amount, presence: true
end
