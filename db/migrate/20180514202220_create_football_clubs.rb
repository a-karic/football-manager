class CreateFootballClubs < ActiveRecord::Migration[5.1]
  def change
    create_table :football_clubs do |t|
      t.string :name
      t.belongs_to :country, foreign_key: true
      t.text :properties

      t.timestamps
    end
  end
end
