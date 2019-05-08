class CreateAwayPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :away_players do |t|
      t.string :name
      t.string :position
      t.integer :value
      t.belongs_to :away_team, foreign_key: true

      t.timestamps
    end
  end
end
