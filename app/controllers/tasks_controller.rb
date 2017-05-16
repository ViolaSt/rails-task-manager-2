class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]


  def index
    @tasks = Task.all
  end

  def show
  end

  def create
    @task = Task.create(name: params[:task][:name], description: params[:task][:description], done: params[:task][:done])
  end

  def new
    @task = Task.new
  end

# GET
  def edit
  end

  # POST
  def update
    @task = Task.update(name: params[:task][:name], description: params[:task][:description], done: params[:task][:done])
    # redirect_to task_path(@task)
  end

  def destroy
    @task.destroy
  end

  private

  def task_params
    params.require(:task).permit(:name, :description, :done)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end

