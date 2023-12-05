class PurchaseDetail < ApplicationRecord
  belongs_to :purchase
  belongs_to :product
  validates :quantity, :cost, :subtotal, presence: true
end
