class GraphsController < ApplicationController

  def index
  @graphs = Graph.all 

  render json: @graphs
  end

    def create
    @new_graph = Graph.create!(stock_sym: params[:stock_sym], 
    x_axis_array: params[:x_axis_array], 
    proj_low_array: params[:proj_low_array], 
    proj_high_array: params[:proj_high_array], 
    proj_array: params[:proj_array])
    
    if @new_graph.valid?
      @new_graph.save

      return render json: @new_graph, status: :created
    else
      return render json: {error: @new_graph.errors.full_messages}
    end
  end
  
end
