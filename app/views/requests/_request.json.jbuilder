json.extract! request, :id, :user_id, :title, :location, :time, :description, :budget, :status, :created_at, :updated_at
json.url request_url(request, format: :json)