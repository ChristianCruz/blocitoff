class WelcomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to :controller => 'users', :action => 'show'
    end
  end

  def about
  end
end
