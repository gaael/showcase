json.extract! project, :id, :name, :url, :codebase, :ruby_version, :rails_version, :front_end_framework, :description, :created_at, :updated_at
json.url project_url(project, format: :json)
