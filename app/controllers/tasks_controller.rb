class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(book_params)

    if @task.save
      redirect_to :action => 'index'
    end
  end

  def edit
  end

  def update
  end

  def delete
    Task.find(params[:id]).destroy
    redirect_to :action => 'index'
  end
end
