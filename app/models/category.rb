class Category < ApplicationRecord
  belongs_to :parent_category, class_name: 'Category', optional: true
  belongs_to :child_category, class_name: 'Category', optional: true
  has_many :products
  validates :name, presence: true
end
