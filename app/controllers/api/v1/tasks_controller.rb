module Api
  module V1
    class TasksController < Api::V1::ApiController
      before_action :set_project
      before_action :set_project_task, only: %i[show update destroy]

      def index
        render json: @project.tasks, status: :ok
      end

      def show
        render json: @task, status: :ok
      end

      def create
        @project.tasks.create!(task_params)
        render json: @project, status: :created
      end

      def update
        @task.update(task_params)
        head :no_content
      end

      def destroy
        @task.destroy
        head :no_content
      end

      private

      def task_params
        params.permit(:name, :done)
      end

      def set_project
        @project = Project.find(params[:project_id])
      end

      def set_project_task
        @task = @project.tasks.find(params[:id]) if @project
      end
    end
  end
end
