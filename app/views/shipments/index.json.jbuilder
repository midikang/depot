json.array!(@shipments) do |shipment|
  json.extract! shipment, :id, :status, :buyer, :ship_date, :origin, :destination, :total_weight, :total_volumn, :priority, :order_type
  json.url shipment_url(shipment, format: :json)
end
