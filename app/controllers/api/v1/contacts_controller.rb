module Api::V1
    class ContactsController < Api::BaseController
        def create
            contact = Contact.new(contact_params)
            if contact.save
                render json: contact, status: 201
            else
                render json: contact.errors.messages, status: 422
            end
        end
              
        def update 
        end

        private
        def contact_params
            params.require(:contact).permit(:name, :email, :user_id)
        end
    end
end

