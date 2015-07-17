json.array!(@sales) do |sale|
  json.extract! sale, :id, :customer_name, :item_name, :description, :barcode, :cost_price, :retail_price, :date_delivered, :date_of_expiry, :quantity, :sales_person, :date_sold
  json.url sale_url(sale, format: :json)
end
