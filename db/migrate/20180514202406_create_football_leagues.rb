class CreateFootballLeagues < ActiveRecord::Migration[5.1]
  def change
    create_table :football_leagues do |t|
      t.string :name
      t.belongs_to :country, foreign_key: true

      t.timestamps
    end
  end
end
