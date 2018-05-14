class CreateFootballSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :football_skills do |t|
      t.string :name
      t.integer :level
      t.belongs_to :player, foreign_key: true

      t.timestamps
    end
  end
end
