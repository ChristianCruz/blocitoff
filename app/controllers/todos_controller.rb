class TodosController < ApplicationController
  def index
    @todos = Todos.where(done: false)
    @todone = Todos.where(done: true)
  end

  def new
    @todo = new.Todos
  end

  def create
    @todo = Todos.new(todo_params)
    @todo.save
    redirect_to @todo, notice: 'Your new TODO was saved'
  end

  def show
    @todo = Todos.find params[:id]
  end

  private

  def todo_params
    params.require(:todo).permit(:description)
  end
end
