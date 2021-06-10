class AddPhoneToContacts < ActiveRecord::Migration[6.1]
  def change
    add_column :contacts, :phone, :string
  end
end
