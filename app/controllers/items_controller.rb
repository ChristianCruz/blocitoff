class ItemsController < ApplicationController
  def create
    @item = Item.new(item_params)
    @item.user = current_user
    if @item.save
      redirect_to users_show_path, notice: "Item saved succesfully"
    else
      flash[:error] = "There was an error saving your item"
    end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end
 
end
