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
    
    if @todo.save
      redirect_to todos_path, notice: 'Your new TODO item was saved'
    else
      render "new"
    end
  end

  def show
    @todo = Todos.find params[:id]
  end

  private

  def todo_params
    params.require(:todos).permit(:name, :done)
  end
end
