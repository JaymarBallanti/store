class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :item_name
      t.text :description
      t.string :barcode
      t.money :cost_price
      t.money :retail_price
      t.datetime :date_delivered
      t.date :date_of_expiry
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
