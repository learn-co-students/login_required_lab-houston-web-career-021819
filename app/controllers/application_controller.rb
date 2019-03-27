class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

    def authenticate
        if session[:name] == nil
            redirect_to '/'
        end
    end

    def current_user
        session[:name]
    end

  def index
        if current_user
        else
            raise "Unauthorized"
        end
  end

end
