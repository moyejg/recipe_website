json.extract! ingredient, :id, :name, :amount, :measurement, :recipe_id, :created_at, :updated_at
json.url ingredient_url(ingredient, format: :json)
