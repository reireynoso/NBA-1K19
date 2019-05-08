class CreateHomeTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :home_teams do |t|
      t.string :name
      t.string :location
      t.integer :num_of_wins
      t.integer :num_of_losses
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
