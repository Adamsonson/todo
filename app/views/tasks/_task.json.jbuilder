json.extract! task, :id, :title, :description, :state, :due_at, :deleted_at, :created_at, :updated_at
json.url task_url(task, format: :json)
