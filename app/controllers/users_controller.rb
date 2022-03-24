class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.create(strong_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to root_path
            
        else
            render :new
        end
    end

    private

    def strong_params
        params.require(:user).permit(:username, :password)
    end

end