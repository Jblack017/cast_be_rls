class ProjectsController < ApplicationController

  def index
    @projects = Project.all 

    render json: @projects
  end

  def show
    @project = Project.find params[:id]

    render json: @project, include: :graphs
  end

end