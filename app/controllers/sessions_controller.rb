class SessionsController < ApplicationController

    def new
        @user = User.new
    end

    def login

    end
    
    def create
        @user = User.find_by(username: params[:username])
        #authenticates user credentials
        if @user && @user.authenticate(params[:password])
            #set session and redirect on success
            session[:user_id] = @user.id 
            redirect_to '/wonder'

        else
            #returns to login page with error message
            message = "Try Again"
            redirect_to login_path, notice: message
        end

    end

    def wonder

    end

    def welcome

    end

    def destroy
        session.delete :user_id
  
        redirect_to '/'
    end

end