module Api::V1
    class UsersController < Api::BaseController
        def create
            user = User.new(user_params)
            if user.save
                render json: user, status: 201
            else
                render json: user.errors.messages, status: 422
            end
        end
              
        def update
        end

        def login
            user = User.find_by(email: user_params[:email], password: user_params[:password])
            render json: user
        end
        private
        def user_params
            params.require(:user).permit(:email, :password, :name)
        end
    end
end