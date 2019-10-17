json.extract! comment, :id, :username_string, :body, :cast_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
