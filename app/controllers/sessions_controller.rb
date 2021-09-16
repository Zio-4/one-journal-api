class SessionsController < ApplicationController
    before_action :authorize, only: :destroy

    def create
        user = User.find_by(username: params[:username])
        if user&.authenticate(params[:password])
            session[:user_id] = user.id
            render json: user, status: :created
        else
            render json: {error: "Invalid Username or Password"}, status: :unauthorized
        end
    end

    def destroy
        session.delete :user_id
        head :no_content
    end

    private

    def find_user
        User.find_by(username: params[:username])
    end
end
