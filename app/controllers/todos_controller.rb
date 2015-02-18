class TodosController < ApplicationController
  def index
    @todos = Todos.where(done: false)
    @todone = Todos.where(done: true)
  end

  def new
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.save
    redirect_to @todo, notice: 'Your new TODO was saved'
  end

  def show
    @todo = Todo.find params[:id]
  end

  private

  def todo_params
    params.require(:todo).permit(:description)
  end
end
