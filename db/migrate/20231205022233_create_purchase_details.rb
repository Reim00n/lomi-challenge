class CreatePurchaseDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :purchase_details do |t|
      t.string :quantity
      t.float :cost
      t.float :subtotal
      t.references :purchase, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
