class SerializeService
  SERIALIZERS = {
    project: ProjectSerializer,
    task: TaskSerializer,
    comment: CommentSerializer
  }.freeze

  def initialize(object:, serializer:, included: nil)
    @object = object
    @serializer = serializer
    @options = { include: [included] }
  end

  def call
    serialize
  end

  private

  def serialize
    @serialized = SERIALIZERS[@serializer].new(@object, @options).serializable_hash.to_json
  end
end
