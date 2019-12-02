json.extract! recipe, :id, :name, :description, :user_id, :ingredient_id, :direction_id, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
