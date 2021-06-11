class ContactsController < ApplicationController
    before_action :view_contact, only: %i[ show edit ]
    def index
        @contacts = current_user.contacts
        @props = {
            component_name: 'list',
            component_data:  @contacts
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

    def new
        @props = {
            component_name: 'contacts_form',
            component_data: @contact
        }
    end


    private
    def contact_params
        params.require(:contact).permit(:name, :email)
    end
    
    def view_contact
        @contact = Contact.find(params[:id])
    end
end
