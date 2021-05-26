class UsersController < ApplicationController
    before_action :view_user, only: %i[ show ]
    def new
        @user = User.new
    end

    def show
    end
    private
    def user_params
        params.require(:user).permit(
           :name, :email, :birth_date, :gender
        )
    end
    def view_user
        @user = User.find(params[:id])
      end
end
