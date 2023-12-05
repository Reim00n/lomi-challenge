class Supplier < ApplicationRecord
  belongs_to :country
  has_many :products
  validates :name, presence: true
end
