class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :customer_name
      t.string :item_name
      t.text :description
      t.string :barcode
      t.money :cost_price
      t.money :retail_price
      t.datetime :date_delivered
      t.date :date_of_expiry
      t.integer :quantity
      t.string :sales_person
      t.datetime :date_sold

      t.timestamps null: false
    end
  end
end
