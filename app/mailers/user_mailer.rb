class UserMailer < ApplicationMailer
  default from: 'notifications@veteransairlift.org'
  
  def welcome_email(user)
    @user = user
    @url = "www.example.com/login"
    mail(to: @user.email, subject: 'Welcome to Veterans Airlift Command')
  end
  
end
