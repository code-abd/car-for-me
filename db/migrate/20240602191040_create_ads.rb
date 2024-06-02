class CreateAds < ActiveRecord::Migration[7.1]
  def change
    create_table :ads do |t|
      t.string :type
      t.string :title
      t.string :description
      t.string :features

      t.decimal :asking_price
      t.string :lookup_location

      t.references :user, null: false, foreign_key: true
      t.references :vehicle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
