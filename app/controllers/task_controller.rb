class TaskController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    find
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(user_params)
    redirect_to show_path(@task)
  end

  def edit
    find
  end

  def update
    find
    @task.update(user_params)
    redirect_to show_path(@task)
  end

  def destroy
    find
    @task.destroy
    redirect_to tasks_path
  end

  # def checkbox
  #   if new_task.completed
  #     '[x]'
  #   else
  #     '[]'
  #   end
  # end

  private

  def find
    @task = Task.find(params[:id])
  end

  def user_params
    params[:task].permit([:title, :details])
  end

end
