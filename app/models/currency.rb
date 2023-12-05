class Currency < ApplicationRecord
  has_many :purchases
  validates :name, presence: true
end
