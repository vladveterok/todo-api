class TaskSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :position, :deadline, :done, :project_id, :created_at, :updated_at
end
