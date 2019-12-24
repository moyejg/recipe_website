class AddStepNumberToDirections < ActiveRecord::Migration[6.0]
  def change
    add_column :directions, :step_number, :integer
  end
end
