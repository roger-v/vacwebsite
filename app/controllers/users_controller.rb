class UsersController < ApplicationController
  
  def new
    redirect_to root_path if logged_in?
    @user = User.new
  end
  
  def create
    redirect_to root_path if logged_in?
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      UserMailer.welcome_email(@user).deliver_now
      redirect_to root_path
    else
      render 'new' # THIS NEEDS TO GET FIXED! sign up errors redirect to /users/...
    end
  end
  
  def destroy
    if is_admin?
      user = User.find_by(id: params[:id])
      if !user.admin
        user.destroy
      else 
        flash[:error] = "#{user.firstname} #{user.lastname} is an administrator. You cannot delete admins."
      end
      redirect_back(fallback_location: root_path)
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:id, :firstname, :lastname, :email, :password, :password_confirmation)
  end
end