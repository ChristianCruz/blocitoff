class WelcomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to :controller => 'todos', :action => 'index'
  end

  def about
  end
end