class ProjectsController < ApplicationController
  before_action :set_project, only: %i[show update destroy]

  def index
    @projects = Project.all
    render json: @projects, status: :ok
  end

  def show
    render json: @project, status: :ok
  end

  def create
    @project = Project.create!(project_params)
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
    @project = Project.find(params[:id])
  end
end
