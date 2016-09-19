class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :brand_name

      t.timestamps null: false
    end
  end
end
