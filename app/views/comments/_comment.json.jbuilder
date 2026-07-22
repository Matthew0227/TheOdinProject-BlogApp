json.extract! comment, :id, :body, :blog_id, :created_at, :updated_at
json.author comment.author
json.url comment_url(comment, format: :json)
