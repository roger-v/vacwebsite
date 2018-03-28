class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "Welcome #{@user.firstname}"
      redirect_to root_path
    else
      render "new"
    end
  end
  
  def destroy
    if is_admin?
      User.destroy(params[:id]).destroy
      redirect_back(fallback_location: root_path)
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:id, :firstname, :lastname, :email, :password)
  end
end