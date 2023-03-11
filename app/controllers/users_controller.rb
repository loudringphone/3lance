
class UsersController < ApplicationController
    skip_before_action :is_authorized, only: [:create, :login, :index]

    def user_profile
        render json: @user
    end
    
    def index
        @users = User.all
        render json: @users
    end

    def create
        @user = User.create(user_params)
        if @user
            @token = JWT.encode({user_id: @user.id, username: @user.username}, ENV["RAILS_SECRET_KEY_BASE"][0])
            render json: @user, status: :created
        end
    end


    def login
        @user = User.find_by(email: params[:user][:email])

        if @user && @user.authenticate(params[:user][:password])
        @token = JWT.encode({user_id: @user.id, username: @user.username}, ENV["RAILS_SECRET_KEY_BASE"][0])
          render json: {user: @user, token: @token}
        else
          render json: {error: "Invalid email or password"}, status: :unauthorized
        end
    end



        private
    def user_params
        params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
end
