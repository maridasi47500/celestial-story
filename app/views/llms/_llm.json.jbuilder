json.extract! llm, :id, :name, :link, :llmpage_id, :created_at, :updated_at
json.url llm_url(llm, format: :json)
