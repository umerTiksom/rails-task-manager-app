class TasksController < ApplicationController
   def index
     @task=Task.all
   end
   def show
    @task=Task.find(params[:id])
   end
   def new
   redirect_to root_path
   end
end
