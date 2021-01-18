class ProjectSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :user_id
  has_many :tasks
end
