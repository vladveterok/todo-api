class TaskSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :position, :deadline, :done, :created_at, :updated_at
end
