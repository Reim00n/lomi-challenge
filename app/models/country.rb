class Country < ApplicationRecord
  has_many :suppliers
  validates :name, presence: true
end
