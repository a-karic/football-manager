class CreateFootballClubs < ActiveRecord::Migration[5.1]
  def change
    create_table :football_clubs do |t|
      t.integer :league_id, foreign_key: true
      t.string :code
      t.string :key
      t.string :logo
      t.string :name

      t.timestamps
    end
  end
end
