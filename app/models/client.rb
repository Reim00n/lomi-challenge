class Client < ApplicationRecord
  has_many :cards
  has_many :purchases
  validates :name, presence: true
end
