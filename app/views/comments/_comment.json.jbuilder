json.extract! comment, :id, :user_id, :comment_entry, :recipe_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
