class Product < ApplicationRecord
  belongs_to :brand
  belongs_to :category
  belongs_to :measure
  belongs_to :supplier
  has_many :purchase_details
  enum status: %i[active disabled]
  validates :name, :measure, :vat_rate, :status, presence: true
end
