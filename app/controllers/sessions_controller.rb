class SessionsController < ApplicationController
    def new
    end

    def create
        @user = User.find_by(name: params[:name])
        if !!@user && @user.authenticate(params[:password])

            session[:user_id] = @user.id
            redirect_to home_path
        else
            message = "Something went wrong! Please check your info again!"
            redirect_to login_path, notice: message
        end
    end

    def destroy
        session.delete :user_id
        redirect_to '/'
    end

end
