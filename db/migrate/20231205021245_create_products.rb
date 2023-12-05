class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.float :cost
      t.integer :vat_rate
      t.integer :status
      t.references :brand, null: true, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.references :measure, null: false, foreign_key: true
      t.references :supplier, null: true, foreign_key: true

      t.timestamps
    end
  end
end
