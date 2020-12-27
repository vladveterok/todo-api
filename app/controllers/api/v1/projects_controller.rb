module Api
  module V1
    class ProjectsController < Api::V1::ApiController
      before_action :set_project, only: %i[update destroy]

      def index
        @projects = current_user.projects
        render json: SerializeService.new(object: @projects, serializer: :project).call, status: :ok
      end

      def create
        @project = current_user.projects.build(project_params)
        return render json: { error: @project.errors }, status: :unprocessable_entity unless @project.save

        render json: SerializeService.new(object: @project, serializer: :project).call, status: :created
      end

      def update
        @project.update!(project_params)
        head :no_content
      end

      def destroy
        @project = Project.find(params[:id])
        return render json: { error: I18n.t('errors.projects.destroy') }, status: :bad_request unless @project&.destroy

        render json: { message: I18n.t('messages.projects.destroy_success') }, status: :ok
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
