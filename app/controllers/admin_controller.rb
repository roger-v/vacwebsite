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
    @users = User.last(50)
    
    @all_users = User.all
    @users = User.all
=begin
    if params[:search]
      #@users = User.search(params[:search]).order("created_at DESC")
      @all_users = User.find_by(firstname: params[:search])
    else
      @all_users = User.all.order("created_at DESC")
    end
=end

    #User Search function
    
    if params[:search]
      #@users = User.where(:firstname => params[:search]) + User.where(:lastname => params[:search]) + User.where(:email => params[:search])
      @users = User.where(:firstname => params[:search])
      
      if params[:search_attr] == "firstname"
        @users = User.where(:firstname => params[:search])
      end
      
      if params[:search_attr] == "lastname"
        @users = User.where(:lastname => params[:search])
      end
      
      if params[:search_attr] == "email"
        @users = User.where(:email => params[:search])
      end
      
    end
    
    if params[:search] == ""
      @users = User.all
    end

    #@users = @all_users
    #@movies = Movie.where(:rating => selected_ratings_keys)
    #@users = User.where(:firstname => "Kyle")
    
  end
  
end