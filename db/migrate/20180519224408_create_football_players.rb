class CreateFootballPlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :football_players do |t|
      t.integer :age
      t.integer :club_id, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :photo
      t.integer :salary
      t.integer :value
      t.integer :height
      t.integer :weight
      t.text :skills
      t.text :properties

      t.timestamps
    end
  end
end
