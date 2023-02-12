# class UsersController < ApplicationController
#     skip_before_action :authenticate_request, only: [:create]
#     before_action :set_user, only: [:show, :destroy]

#     # GET /users
#     def index
#         @users = User.All 
#         render json: @users, status: :ok
#     end

#     # GET /users/{username}
#     def show
#         render json: @user, status: :ok
#     end

#     # POST /users
#     def create 
#         @user = User.new(user_params)
#         if @user.save
#             render json: @user, status: :created
#         else
#             render json: { errors: @user.errors.full_messages },
#                    status: :unprocessable_entity
#         end
#     end

#     # PUT /users/{username}
#     def update
#         unless @user.update(user_params)
#             render json: { errors: @user.errors.full_messages },
#                    status: :unprocessable_entity
#         end
#     end

#     # DELETE /users/{username}
#     def destroy
#         @user.destroy
#     end

#     private
#         def user_params
#             params.permit(:username, :email, :password)
#         end

#         def set_user
#             @user = User.find(params[:id])
#         end
# end

# class UsersController < ApplicationController
#   def index
#       users = User.all
#       render json: users
#   end


#   def create
#       user = User.new(user_params)

#       if user.save
#           token = issue_token(user)
#           render json: {user: UserSerializer.new(user), jwt: token}
#       else
#           if user.errors.messages
#               render json: {error: user.errors.messages}
#           else
#               render json: {error: "User could not be created. Please try again."}
#           end
#       end
#   end

#   def show
#       user = User.find(params[:id])
#       if user
#           render json: user
#       else
#           render json: {error: "User could not be found."}
#       end
#   end

#     private
#     def user_params
#       params.require(:user).permit(:username, :email, :password, :password_confirmation)
#     end


# end

# class UsersController < ApplicationController
#     def create
#         @user = User.new(user_params)

#         if @user.save
#             token = encode_token({ user_id: @user.id })
#             render json: { user: @user, token: token },status: :ok
#         else
#             render json: { error: 'Invalid username or password' }, status: :umprocessable_entity
#         end
#     end

#     def login
#         @user = User.find_by(username: user_params[:username])
#         if @user && @user.authenticate(user_params[:password])
#             token = encode_token({ user_id: @user.id })
#             render json: { user: @user, token: token },status: :ok
#         else
#             render json: { error: 'Invalid username or password' }, status: :umprocessable_entity
#         end
#     end


#     private
#     def user_params
#         params.require(:user).permit(:username, :email, :password, :password_confirmation)
#     end

# end

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
        render json: @user, status: :created
    end


    def login
        @user = User.find_by(email: params[:user][:email])

        if @user && @user.authenticate(params[:user][:password])
          @token = JWT.encode({user_id: @user.id}, Rails.application.secrets.secret_key_base[0])
    
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
