json.extract! candidate_task, :id, :task_id, :candidate_id, :created_at, :updated_at
json.url candidate_task_url(candidate_task, format: :json)
