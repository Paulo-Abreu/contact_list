# frozen_string_literal: true

class Ability
  include CanCan::Ability
  
  def initialize(user)
    @user = user
    send(@user.role)
  end
  def admin
    can :manage, :all
  end

  def customer
    can :manage, Contact, user_id: @user_id
    can :manage, User, id: @user_id
  end
end
