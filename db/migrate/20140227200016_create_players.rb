class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :player_guide
      t.string :first_name
      t.string :last_name
      t.string :full_name
      t.string :abbr_name
      t.json :player_details
      t.integer :team_id

      t.timestamps
    end
  end
end
