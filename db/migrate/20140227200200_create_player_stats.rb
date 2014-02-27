class CreatePlayerStats < ActiveRecord::Migration
  def change
    create_table :player_stats do |t|
      t.integer :player_id
      t.json :stats

      t.timestamps
    end
  end
end
