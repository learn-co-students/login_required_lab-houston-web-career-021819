class SessionsController < ApplicationController

   def new
   end

   def create
      if session[:name] == nil || session[:name].empty? 
         redirect_to new_session_path
      else
         redirect_to show_secret_path
      end
   end 

   def destroy
      session.delete:name
   end 
end