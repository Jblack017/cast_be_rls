Graph.destroy_all
Project.destroy_all

@cmcsa = Project.create(name:"CMCSA", description:"This is a description")
@tsla = Project.create(name:"TSLA", description:"This is another description")
Graph.create(project: @cmcsa, stock_sym: "CMCSA", x_axis_array: "1,2,3,4,5,6", proj_low_array: "1,2,3,4,5,6", proj_high_array: "1,2,3,4,5,6", proj_array: "1,2,3,4,5,6")
Graph.create(project: @cmcsa, stock_sym: "ANOTHER CMCSA", x_axis_array: "1,2,3,4,5,5", proj_low_array: "1,2,3,4,5,5", proj_high_array: "1,2,3,4,5,5", proj_array: "1,2,3,4,5,5")
Graph.create(project: @tsla, stock_sym: "TSLA", x_axis_array: "1,2,3,4,5,5", proj_low_array: "1,2,3,4,5,5", proj_high_array: "1,2,3,4,5,5", proj_array: "1,2,3,4,5,5")
Graph.create(project: @tsla, stock_sym: "ANOTHER TSLA", x_axis_array: "1,2,3,4,5,5", proj_low_array: "1,2,3,4,5,5", proj_high_array: "1,2,3,4,5,5", proj_array: "1,2,3,4,5,5")
