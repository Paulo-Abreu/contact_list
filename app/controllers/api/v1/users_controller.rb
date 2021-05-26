module Api::V1
    class UsersController < Api::BaseController
        def create
            @user = User.new(user_params)

            respond_to do |format|
                if @user.save
                  format.html { redirect_to @user, notice: "Successfully" }
                  format.json { render :show, status: :created, location: @user }
                else
                  format.html { render :new, status: :unprocessable_entity }
                  format.json { render json: @user.errors, status: :unprocessable_entity }
                end
              end
              
              def update
              respond_to do |format|
                if @user.update(user_params)
                  format.html { redirect_to @user, notice: "User was successfully updated." }
                  format.json { render :show, status: :ok, location: @user }
                else
                  format.html { render :edit, status: :unprocessable_entity }
                  format.json { render json: @user.errors, status: :unprocessable_entity }
                end
              end
            end
          
        end

    end
end