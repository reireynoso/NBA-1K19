class CreateAwayTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :away_teams do |t|
      t.string :name
      t.string :location
      t.integer :num_of_wins
      t.integer :num_of_losses

      t.timestamps
    end
  end
end
