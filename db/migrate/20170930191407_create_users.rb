class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :nick
      t.string :password_digest
      t.integer :country_id
      t.integer :city_id

      t.timestamps
    end
  end
end
