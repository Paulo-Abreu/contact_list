class Contact < ApplicationRecord
  has_and_belongs_to_many :user
  belongs_to :user
  scope :search, ->(query) { where("phone like ?", "%#{query}%") }

end
