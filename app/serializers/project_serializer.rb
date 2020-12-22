class ProjectSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :user_id, :created_at, :updated_at
  has_many :tasks
end
