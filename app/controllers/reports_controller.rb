class ReportsController < ApplicationController
    def index
        @props = {
            component_name: 'reports',
            component_data:[{ 
                total_contacts: Contact.all.count,
                total_users: User.all.count, 
                last_contacts: Contact.where(created_at: 7.days.ago..Time.now).count, 
                last_users: User.where(created_at: 7.days.ago..Time.now).count,
                round: (Contact.all.count.to_f / User.all.count.to_f).round(2)
            }]
        }  
    end
end 