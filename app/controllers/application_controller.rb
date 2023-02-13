# class ApplicationController < ActionController::Base
#     include JsonWebToken
#     skip_before_action :verify_authenticity_token

#     before_action :authenticate_request

#     private 
#         def authenticate_request
#             header = request.headers["Authorization"]
#             header = header.split(" ").last if header
#             decoded = jwt_decode(header)
#             @current_user = User.find(decoded[:user_id])
#         end
# end



# class ApplicationController < ActionController::Base
#     include JsonWebToken
#     skip_before_action :verify_authenticity_token
#     before_action :authenticate_request


#     def jwt_key
#         Rails.application.credentials.jwt_key
#     end

#     def issue_token(user)
#         JWT.encode({user_id: user.id}, jwt_key, "HS256")
#     end

#     def decoded_token
#         begin
#             JWT.decode(token, jwt_key, true, { :algorithm => 'HS256' })
#         rescue => exception
#             [{error: "Invalid Token"}]
#         end    
#     end
    
#     def token
#         request.headers["Authorization"]
#     end

#     def user_id
#         decoded_token.first["user_id"]
#     end

#     def current_user
#         user ||= User.find_by(id: user_id)
#     end

#     def logged_in?
#         !!current_user
#     end

#     private 
#         def authenticate_request
#             header = request.headers["Authorization"]
#             header = header.split(" ").last if header
#             decoded = jwt_decode(header)
#             @current_user = User.find(decoded[:user_id])
#         end
# end


# class ApplicationController < ActionController::API
#     # POST /auth/login
#     def encode_token(payload)
#         JWT.encode(payload,'secret')   
#     end

#     def decode_token
#         # Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoiMTIzIn0.AOXUao_6a_LbIcwkaZU574fPqvW6mPvHhwKC7Fatuws
#         auth_header = request.headers['Authorization']
#         if auth_header
#             token = auth_header.split(' ')[1]
#             begin
#                 JWT.decode(token, 'secret', true, algorithm: 'HS256')
#             rescue JWT::DecodeError
#             end
#         end
#     end

#     def authorized_user
#         decoded_token = decode_token()
#         if decoded_token
#             user_id = decoded_token[0]['user_id']
#             @user = User.find_by(id: user_id)
#         end
#     end

#     def authorized
#         render json: { message: 'You have to log in.' }, status: :unathorized unless authorized_user
#     end
# end

class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token
    # before_action :is_authorized
    
    # def is_authorized
    #     render json: {error: "Please Log In"} unless is_logged_in
    # end

    def is_logged_in
        !!current_user
    end

    def current_user
        auth_header = request.headers["Authorization"]
        if auth_header
            user_token = auth_header.split(" ")[1]
            begin
                @user_id = JWT.decode(user_token, Rails.application.secrets.secret_key_base[0])[0]["user_id"]
            rescue JWT::DecodeError
                nil
            end
        end
        if(@user_id)
            @user = User.find(@user_id)
        else
            nil
        end
    end
end