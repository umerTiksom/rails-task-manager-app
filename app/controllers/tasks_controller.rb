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
      status: params[:task][:status]
    )
    if @task.save
      redirect_to tasks_path
    end
  end
end
