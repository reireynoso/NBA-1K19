class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.belongs_to :away_team, foreign_key: true
      t.belongs_to :home_team, foreign_key: true

      t.timestamps
    end
  end
end
