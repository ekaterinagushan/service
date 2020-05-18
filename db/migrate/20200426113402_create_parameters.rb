class CreateParameters < ActiveRecord::Migration[6.0]
  def change
    create_table :parameters do |t|
      t.integer :ingredient_id
      t.integer :actual_danger_id

      t.timestamps
    end
  end
end
