module Api
  module V1
    class TasksController < Api::V1::ApiController
      before_action :set_project
      before_action :set_project_task, only: %i[update destroy toggle_status]

      def index
        @tasks = @project.tasks
        render json: SerializeService.new(object: @tasks, serializer: :task).call, status: :ok
      end

      def create
        @task = @project.tasks.build(task_params)
        return render json: { error: @task.errors }, status: :unprocessable_entity unless @task.save

        render json: SerializeService.new(object: @task, serializer: :task).call, status: :created
      end

      def update
        @task.update!(task_params)
        head :no_content
      end

      def destroy
        @task.destroy
        head :no_content
      end

      def sort
        Project.find(params[:project_id]).tasks.each.with_index(1) do |task, index|
          task.update position: index
        end
        head :ok
      end

      def toggle_status
        return unless @task

        @task.toggle(:done).save
        head :ok
      end

      private

      def task_params
        params.permit(:name, :position, :deadline, :done, :project_id)
      end

      def set_project
        @project = Project.find(params[:project_id])
        return head :forbidden unless @project.user == current_user
      end

      def set_project_task
        @task = @project.tasks.find(params[:id]) if @project
      end
    end
  end
end
