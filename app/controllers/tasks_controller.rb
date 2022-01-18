class TasksController < ApplicationController
  def tasks
  end

  def index
    @tasks = Task.all
  end

  def show
    @tasks = Task.find(params[:id])
  end

  def new
    @tasks = Task.new
  end

  def create
    @tasks = Task.new(task_params)
    @tasks.save
    redirect_to task_path(@tasks)
  end

  # private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    raise
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def destroy
  end
end
