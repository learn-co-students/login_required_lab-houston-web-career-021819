class SecretsController < ApplicationController

  def show
    if current_user == nil
      redirect_to '/sessions/new'
    else
      #render :show
    end
  end
end
