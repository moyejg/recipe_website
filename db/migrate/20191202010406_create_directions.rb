class CreateDirections < ActiveRecord::Migration[6.0]
  def change
    create_table :directions do |t|
      t.text :step_entry
      t.integer :recipe_id

      t.timestamps
    end
  end
end
