class ContactsController < ApplicationController
    def index
        @contacts = Contact.all.map{|contact| contact.as_json}
        @props = {
            component_name: 'list',
            component_data:  @contacts
        }
    end

    def show
    end

    def edit
    end

    def new
        @props = {
            component_name: 'contacts_form',
            component_data: @contacts
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
