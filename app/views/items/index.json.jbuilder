json.array!(@items) do |item|
  json.extract! item, :id, :item_name, :description, :barcode, :cost_price, :retail_price, :date_delivered, :date_of_expiry, :quantity
  json.url item_url(item, format: :json)
end
