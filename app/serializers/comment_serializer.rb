class CommentSerializer
  include JSONAPI::Serializer
  attributes :id, :text, :file, :task_id
end
