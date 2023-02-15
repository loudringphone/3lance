json.extract! message, :id, :sender_id, :receiver_id, :request_id, :content, :sent_time, :created_at, :updated_at
json.url message_url(message, format: :json)
