class CreateSuppliers < ActiveRecord::Migration[6.1]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :legal_entity
      t.string :ruc
      t.string :phone
      t.string :contact_name
      t.references :country, null: true, foreign_key: true

      t.timestamps
    end
  end
end
