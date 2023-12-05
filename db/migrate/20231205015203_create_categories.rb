class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.references :parent_category, foreign_key: { to_table: :categories }
      t.references :child_category, foreign_key: { to_table: :categories }
      t.timestamps
    end
  end
end
