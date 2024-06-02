class CreateVehicles < ActiveRecord::Migration[7.1]
  def change
    create_table :vehicles do |t|
      # type as car, bike, truck, yatch etc.
      t.string :vehicle_type, null: false
      # define what kind of engine vehicle has i.e, W10, v12, eletric.
      t.string :engine_type, null: false
      t.integer :horse_power
      t.integer :torque
      t.integer :seating_capacity
      t.decimal :price, precision: 10, scale: 2

      t.references :user, null: true, foreign_key: true

      t.timestamps
    end
  end
end
