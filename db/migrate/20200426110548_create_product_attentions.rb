class CreateProductAttentions < ActiveRecord::Migration[6.0]
  def change
    create_table :product_attentions do |t|
      t.integer :actual_danger_id
      t.integer :product_id

      t.timestamps
    end
  end
end
