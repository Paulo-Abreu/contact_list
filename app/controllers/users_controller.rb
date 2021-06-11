class UsersController < ApplicationController
    before_action :view_user, only: %i[ show ]

    def new       
    end

    def create
        @props = {
            component_name: 'create_user',
            component_data:  @user
        } 
    end

    def login
        @props = {
            component_name: 'login',
            component_data:  @users
        }        
    end

    def show
    end

    def edit
    end

    private
    def user_params
        params.require(:user).permit(:email, :password, :name)
    end
    def view_user
        @user = User.find(params[:id])
      end
end
