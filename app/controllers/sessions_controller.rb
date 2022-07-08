class SessionsController < ApplicationController
    def new
    end

    def create
        @user = User.find_by(name: params[:name])
        if !!@user && @user.authenticate(params[:password])

            session[:user_id] = @user.id
            creation = "Logged In Successfully!"
            redirect_to home_path, notice: creation
        else
            message = "Please check your ID and Password again!"
            redirect_to login_path, notice: message
        end
    end

    def destroy
        session.delete :user_id
        redirect_to '/'
    end

end
