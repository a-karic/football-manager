class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.belongs_to :user
      t.string :first_name
      t.string :last_name
      t.string :photo
      t.date :birth_date
      t.belongs_to :language, foreign_key: true
      t.belongs_to :country, foreign_key: true
      t.integer :city_id
      t.integer :role, default: 0

      t.timestamps
    end
  end
end
