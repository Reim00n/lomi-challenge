class Card < ApplicationRecord
  belongs_to :client
  enum card_type: %i[debit credit]
  validates :name, :number, :cvv, :card_type, presence: true
end
