class TasksController < ApplicationController
# Afficher les tâches
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

# Créer une tâche
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params[:task])
    @task.save
  end

# Editer une tâche
  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(params[:task])
    @task.save
  end

# Sup une tâche
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
  end
end
