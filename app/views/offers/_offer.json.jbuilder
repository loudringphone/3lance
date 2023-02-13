json.extract! offer, :id, :user_id, :request_id, :offer_amount, :status, :created_at, :updated_at
json.url offer_url(offer, format: :json)