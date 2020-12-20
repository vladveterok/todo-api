module Api
  module V1
    class ProjectsController < Api::V1::ApiController
      before_action :authorize_access_request!
      before_action :set_project, only: %i[show update destroy]

      def index
        @projects = current_user.projects
        render json: @projects, status: :ok
      end

      def show
        render json: @project, status: :ok
      end

      def create
        @project = current_user.projects.build(project_params)
        return render json: { error: @project.errors }, status: :unprocessable_entity unless @project.save

        render json: @project, status: :created
      end

      def update
        @project.update(project_params)
        head :no_content
      end

      def destroy
        @project = Project.find(params[:id])
        if @project&.destroy
          render json: { message: 'Project deleted successfully' }, status: :ok
        else
          render json: { error: 'Unable to delete Project' }, status: :bad_request
        end
      end

      private

      def project_params
        params.permit(:name, :user_id)
      end

      def set_project
        @project = current_user.projects.find(params[:id])
      end
    end
  end
end
