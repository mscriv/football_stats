class CreateCombines < ActiveRecord::Migration
  def change
    create_table :combines do |t|
      t.string :name
      t.string :college
      t.string :position
      t.decimal :_40_yd_dash, precision: 10, scale: 2
      t.integer :bench_press
      t.decimal :vertical_jump, precision: 10, scale: 2

      t.timestamps
    end
  end
end
