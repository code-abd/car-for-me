class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :password, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :phone_number
      t.string :main_address, null: false
      t.string :alt_address
      t.string :city, null: false
      t.string :state, null: false
      t.string :country, null: false
      t.string :zip
      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end
