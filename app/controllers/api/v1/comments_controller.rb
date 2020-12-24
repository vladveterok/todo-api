module Api
  module V1
    class CommentsController < ApplicationController
      before_action :set_task
      before_action :set_task_comment, only: %i[update destroy]

      def index
        @comments = @task.comments
        render json: SerializeService.new(object: @comments, serializer: :comment).call, status: :ok
      end

      def create
        @comment = @task.comments.build(comment_params)
        return render json: { error: @comment.errors }, status: :unprocessable_entity unless @comment.save

        render json: SerializeService.new(object: @comment, serializer: :comment).call, status: :created
      end

      def update
        @comment.update(comment_params)
        head :no_content
      end

      def destroy
        @comment.destroy
        head :no_content
      end

      private

      def comment_params
        params.permit(:text, :file, :task_id)
      end

      def set_task
        @task = Task.find(params[:task_id])
      end

      def set_task_comment
        @comment = @task.comments.find(params[:id]) if @task
      end
    end
  end
end
