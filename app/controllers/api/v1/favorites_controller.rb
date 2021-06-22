module Api::V1
    class FavoritesController < Api::BaseController
        before_action :view_contact, only: :create
        def create
            favorite = Favorite.new(user_id: current_user.id, contact_id: @contact.id) 
            if favorite.save                
                render json: favorite, status: 201
            else
                render json: favorite.errors.messages, status: 422
            end
        end
        private
        def view_contact
            @contact = Contact.find(params[:favorite_id])
        end
    end
end