class AdminController < ApplicationController
  def index
    if !is_admin?
      redirect_to root_path
    end
  end
  
  def users 
    if !is_admin?
      redirect_to root_path
    end
  end
end