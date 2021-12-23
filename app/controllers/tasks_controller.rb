class TasksController < ApplicationController
  before_action :set_task, except: [:index, :new, :create ]
	before_action :set_project, except: [:index, :destroy]

  def index
    @tasks = Task.order(:position).all
  end

  def toggle
    @task.toggle_completed!
  end

  def new
    @task = Task.new
  end

  def edit
  end

  def create
    @task = @project.tasks.new(task_params)
    respond_to do |format|
      if @task.save
				format.js
      else
        format.js {render :new}
      end
    end
  end

  def update
    respond_to do |format|
      if @task.update(task_params)
        format.js
      else
        format.js {render :edit}
      end
    end
  end

  def destroy
    @task.destroy
    respond_to :js
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def set_project
    @project = Project.find(params[:project_id])
  end

  def task_params
    params.require(:task).permit(:title, :task_deadline)
  end
end

