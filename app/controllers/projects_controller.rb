class ProjectsController < ApplicationController
  before_action :set_project, only: [:edit, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
    @task = Task.new
  end

  # GET /projects/new
  def new
    @project = Project.new
    respond_to {|format| format.js}
  end

  # GET /projects/1/edit
  def edit
	#	respond_to {|format| format.js}
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)
		@task = Task.new
    respond_to do |format|
      if @project.save
      	format.js
        format.html { redirect_to root_path, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
        format.js { render 'new' }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
				format.js
        format.html { redirect_to root_path, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
        format.js { render 'edit' }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
			format.js
      format.html { redirect_to root_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_params
      params.require(:project).permit(:title, :deadline)
    end
end
