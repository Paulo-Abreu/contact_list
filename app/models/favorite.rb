class Favorite < ApplicationRecord
    belongs_to :user
    belongs_to :contact
    has_many :favorites

    validates :contact_id, uniqueness: { scope: :contact_id,
        notice: "contato ja adicionado" }
end
