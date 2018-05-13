class CreateCities < ActiveRecord::Migration[5.1]
  def change
    create_table :cities do |t|
      t.belongs_to :country
      t.string :name
      t.integer :weather, default: 0
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
