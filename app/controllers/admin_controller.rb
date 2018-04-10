class AdminController < ApplicationController
  before_action :verify_admin
  def index
    
  end
  
  def users 
    @page = params[:page].to_i
    @limit = 50
    @users = User.limit(@limit).offset(@limit*(@page - 1));
    @num_pages = (User.all.length / @limit) + 1
    @i = 1 + ((@page - 1) * @limit)
    if @page > @num_pages || @page < 1
      redirect_to admin_users_path(page: 1)
    end
  end
  
  def email
    
  end
  
  def send_email
    UserMailer.admin_email(params[:to], params[:subject], params[:body]).deliver_now
    redirect_to admin_path
  end
  
  private
  
  def verify_admin
    redirect_to root_path unless is_admin?
  end
end