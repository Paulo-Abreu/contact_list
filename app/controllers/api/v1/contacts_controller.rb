module Api::V1
    class ContactController < Api::BaseController
        def create
            @contact = Contact.new(contact_params)

            respond_to do |format|
                if @contact.save
                  format.html { redirect_to @contact, notice: "Successfully" }
                  format.json { render :show, status: :created, location: @contact }
                else
                  format.html { render :new, status: :unprocessable_entity }
                  format.json { render json: @contact.errors, status: :unprocessable_entity }
                end
              end
              
              def update
              respond_to do |format|
                if @contact.update(contact_params)
                  format.html { redirect_to @contact, notice: "Conatact was successfully updated." }
                  format.json { render :show, status: :ok, location: @contact }
                else
                  format.html { render :edit, status: :unprocessable_entity }
                  format.json { render json: @contact.errors, status: :unprocessable_entity }
                end
              end
            end
        end
    end
end