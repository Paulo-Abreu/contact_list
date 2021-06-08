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
            @contact = Contact.find(params[:id])
            if @contact.update(contact_params)
                render json: @contact, status: 201
            else
                render json: @contact.errors.messages, status:422
            end
        end

        private
        def contact_params
            params.require(:contact).permit(:name, :email, :user_id, :details)
        end
        def view_contact
            @contact = Contact.find(params[:id])
        end
    end
end

