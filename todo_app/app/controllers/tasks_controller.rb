class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def show
  end

  def index
  	@tasks = Task.all
  end

  def new
  	@task = Task.new
  end

  def create
  	@task = Task.new(task_params)
  	if @task.save
  	  redirect_to @task
  	else
  	  render action: 'new'
  	end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
  	params.require(:task).permit(:description, :flag, :due)
  end

end