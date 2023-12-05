class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :purchases do |t|
      t.string :invoice_number
      t.datetime :date
      t.string :payment_type
      t.string :total_amount
      t.integer :status
      t.references :client, null: false, foreign_key: true
      t.references :currency, null: true, foreign_key: true

      t.timestamps
    end
  end
end
