class ContactsController < ApplicationController
    def index
        @contacts = Contact.all
    end

    def show
    end

    def edit
    end

    private
    def contact_params
        params.require(:contact).permit(:name, :email, :details)
    end
    def view_contact
        @contact = Contact.find(params[:id])
      end
end
