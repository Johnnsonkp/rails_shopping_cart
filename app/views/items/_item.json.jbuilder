json.extract! item, :id, :brand, :description, :condition, :title, :price, :size, :color, :created_at, :updated_at
json.url item_url(item, format: :json)
