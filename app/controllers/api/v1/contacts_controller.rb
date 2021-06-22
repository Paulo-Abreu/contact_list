module Api::V1
    class FavoritesController < Api::BaseController
        def create
            contact = Contact.new(contact_params)
            contact.user = current_user
            if contact.save
                render json: contact, status: 201
            else
                render json: contact.errors.messages, status: 422
            end
        end
    end
end

