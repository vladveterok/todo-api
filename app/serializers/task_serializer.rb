class TaskSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :position, :deadline, :done, :project_id
  has_many :comments
end
