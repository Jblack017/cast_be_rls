class CreateGraphs < ActiveRecord::Migration[6.1]
  def change
    create_table :graphs do |t|
      t.string :stock_sym
      t.string :x_axis_array
      t.string :proj_low_array
      t.string :proj_high_array
      t.string :proj_array

      t.timestamps
    end
  end
end
