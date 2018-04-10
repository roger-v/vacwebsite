class UserMailer < ApplicationMailer
  default from: 'notifications@e777ec7c830e4717b7627b2b4f2cb38b.vfs.cloud9.us-east-2.amazonaws.com'
  
  def welcome_email(user)
    @user = user
    @url = "www.example.com/login"
    mail(to: @user.email, subject: 'Welcome to Veterans Airlift Command')
  end
  
  def admin_email(email, subj, body)
    @body = body
    mail(to: email, subject: subj)
  end
  
end
