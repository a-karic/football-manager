class CreateFootballStadiums < ActiveRecord::Migration[5.1]
  def change
    create_table :football_stadiums do |t|
      t.string :name
      t.integer :seats_number
      t.belongs_to :club, foreign_key: true

      t.timestamps
    end
  end
end
