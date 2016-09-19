class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :quantity, default: 1
      t.integer :product_id
      t.integer :cart_id
      t.integer :order_id

      t.timestamps null: false
    end
  end
end
