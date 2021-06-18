class UserMailer < ApplicationMailer
    default from: "paulorabreuxd@gmail.com"

    def signup_confirmation(user)
        @user = user

        mail(to: @user.email, subject: 'Welcome to My Awesome Site')
    end
end
