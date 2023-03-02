class SessionController < ApplicationController

    def create
        user = User.find_by(username: params[:username])
        session[:user_id] = user.id
        render json: user
    end

    def destroy
    end
end
