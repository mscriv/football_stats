class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :team_guide
      t.string :nickname
      t.string :market
      t.json :team_details

      t.timestamps
    end
  end
end
