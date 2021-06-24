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
    @project = Project.create(name:params[:name], description:params[:description])
    
    if @project.valid?
      @project.save

      @new_graph = Graph.create(
        project_id: @project.id,
        stock_sym: params[:graph][:stock_sym], 
        x_axis_array: params[:graph][:x_axis_array], 
        proj_low_array: params[:graph][:proj_low_array], 
        proj_high_array: params[:graph][:proj_high_array], 
        proj_array: params[:graph][:proj_array])

      return render json: @project, status: :created
    else
      return render json: {error: newProject.errors.full_messages}
    end
  end

end
