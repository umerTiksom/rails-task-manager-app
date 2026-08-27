class TasksController < ApplicationController
   def index
     @task=Task.all
   end
   def show
    @task=Task.find(params[:id])
   end
   def new
   @task=Task.new
   end
   def create
    @task= Task.new(
      tittle: params[:task][:tittle],
      status: params[:task][:status],
      priority: params[:task][:priority]
    )
    if @task.save
      flash[:notice] = "Task created successfully."
      redirect_to tasks_path
    end
  end
end
