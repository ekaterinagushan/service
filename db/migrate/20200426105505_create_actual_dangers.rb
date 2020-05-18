class CreateActualDangers < ActiveRecord::Migration[6.0]
  def change
    create_table :actual_dangers do |t|
      t.string :name

      t.timestamps
    end
  end
end
