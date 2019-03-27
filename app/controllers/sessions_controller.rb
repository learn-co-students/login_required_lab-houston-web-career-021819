class SessionsController < ApplicationController
    # before_action :authenticate
    # skip_before_action :authenticate, only: [:new]

    def new
    end

    def create
        if params[:name] == nil || params[:name] == ""
            redirect_to '/'
          else
          session[:name] = params[:name]
          redirect_to application_index_path
          end
    end

    def destroy
		session.delete :name
		redirect_to '/'
	end

    def current_user
        User.find(session[:current_user_id])
	end
end