class CreateShipments < ActiveRecord::Migration
  def change
    create_table :shipments do |t|
      t.string :status
      t.string :buyer
      t.datetime :ship_date
      t.string :origin
      t.string :destination
      t.decimal :total_weight
      t.decimal :total_volumn
      t.string :priority
      t.string :order_type

      t.timestamps
    end
  end
end
