class CreateFootballPlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :football_players do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.integer :age
      t.belongs_to :club, foreign_key: true
      t.string :image

      t.timestamps
    end
  end
end
