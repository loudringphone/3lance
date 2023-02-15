json.extract! comment, :id, :user_id, :request_id, :content, :sent_time, :created_at, :updated_at
json.url comment_url(comment, format: :json)
