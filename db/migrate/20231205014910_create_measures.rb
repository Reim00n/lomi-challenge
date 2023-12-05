class CreateMeasures < ActiveRecord::Migration[6.1]
  def change
    create_table :measures do |t|
      t.string :name
      t.string :symbol

      t.timestamps
    end
  end
end
