class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string :name
      t.text :number
      t.string :cvv
      t.integer :card_type
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
