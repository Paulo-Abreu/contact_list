class Contact < ApplicationRecord
  belongs_to :user
  scope :search, ->(query) { where("phone like ?", "%#{query}%") }
end
