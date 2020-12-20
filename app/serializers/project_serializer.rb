class ProjectSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :created_at, :updated_at
  has_many :tasks, if: proc { |project| project.tasks.any? }
end