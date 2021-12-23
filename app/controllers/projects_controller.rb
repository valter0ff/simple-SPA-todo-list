class ProjectsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_project, only: [:edit, :update, :destroy]

  def index
    @projects = current_user.projects
    @task = Task.new
  end

  def new
    @project = current_user.projects.new
  end

  def edit
  end

  def create
    @project = current_user.projects.new(project_params)
		@task = Task.new
    respond_to do |format|
      if @project.save
      	format.js
      else
        format.js { render 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @project.update(project_params)
				format.js
      else
        format.js { render 'edit' }
      end
    end
  end

  def destroy
    @project.destroy
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :deadline)
  end
end
