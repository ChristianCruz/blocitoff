class ListsController < ApplicationController
  def index
    @list = current_user.list
  end

  def create
    @list = List.new(list_params)
    @list.user = current_user
    if @list.save
      redirect_to(lists_path, notice: "Title was saved successfully.")
    else
      flash[:error] = "Error creating title. Please try again."
      redirect_to(lists_path)
    end
  end

  private 

  def list_params
    params.require(:list).permit(:title)
  end

end
