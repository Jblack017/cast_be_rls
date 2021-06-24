class ProjectsController < ApplicationController

  def index
    @projects = Project.all 

    render json: @projects, include: :graphs
  end

  def show
    @project = Project.find params[:id]

    render json: @project, include: :graphs
  end

  def create
    @project = Project.create(name: params[:project][:name], description: params[:project][:description])

    if @project.valid?
      @project.save
      @new_graph = Graph.create(
        project_id: @project.id,
        stock_sym: params[:project][:graph][:stock_sym], 
        x_axis_array: params[:project][:graph][:x_axis_array], 
        proj_low_array: params[:project][:graph][:proj_low_array], 
        proj_high_array: params[:project][:graph][:proj_high_array], 
        proj_array: params[:project][:graph][:proj_array])

      return render json: @project, status: :created
    else
      return render json: {error: @project.errors.full_messages}
    end
  end

end
