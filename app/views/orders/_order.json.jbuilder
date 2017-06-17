json.extract! order, :id, :name, :phone, :address, :food_item_id, :quality, :total_cost, :created_at, :updated_at
json.url order_url(order, format: :json)
