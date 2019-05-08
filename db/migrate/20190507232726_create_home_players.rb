class CreateHomePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :home_players do |t|
      t.string :name
      t.string :position
      t.string :value

      t.timestamps
    end
  end
end
