class CreateCarItems < ActiveRecord::Migration[5.2]
  def change
    create_table :car_items do |t|
      t.integer :qty
      t.integer :product_id
      t.integer :cart_id

      t.timestamps
    end
  end
end
