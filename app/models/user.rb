class User < ApplicationRecord
  has_and_belongs_to_many :contacts
  has_many :contacts
  has_many :favorites
  enum role: [:costumer, :admin]

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
