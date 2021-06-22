class FavoritesController < ApplicationController
    before_action :view_contact, only: %i[ show edit ]  

    def index
        @contacts = current_user.favorites.map { |f| f.contact }
        @props = {
            component_name: 'favorites',
            component_data: @contacts
        }  
    end

    def show
        @props = {
            component_name: 'show_contact',
            component_data: @contact
        }
    end

    def edit
        @props = {
            component_name: 'update_contact',
            component_data: [@contact]
        }
    end


    private

    def view_contact
        @favorite = Favorite.find(params[:favorite_id])
    end
end 