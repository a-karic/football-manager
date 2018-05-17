class CreateCountries < ActiveRecord::Migration[5.1]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :alpha2
      t.string :alpha3
      t.integer :numeric
      t.integer :currency_id
      t.string :capital
      t.string :phone
      t.string :native
      t.string :flag
      t.text :languages

      t.timestamps
    end
  end
end
