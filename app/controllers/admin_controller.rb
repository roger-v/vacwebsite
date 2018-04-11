class AdminController < ApplicationController
  before_action :verify_admin
  @@sortby = nil
  def index
    
  end
  
  def users 
    if (params[:sortby] != nil) 
      @@sortby = params[:sortby]
    elsif (params[:sortby] == @@sortby)
      #switch order.
      
    end
    @page = params[:page].to_i
    @limit = 3
    if (@@sortby)
      @users = User.order(@@sortby).limit(@limit).offset(@limit*(@page - 1));
    else
      @users = User.limit(@limit).offset(@limit*(@page - 1));
    end
    @num_pages = (User.all.length / @limit) + 1
    @i = 1 + ((@page - 1) * @limit)
    if @page > @num_pages || @page < 1
      redirect_to admin_users_path(page: 1)
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
  
  def email
    
  end
  
  def send_email
    UserMailer.admin_email(params[:to], params[:subject], params[:body]).deliver_now
    redirect_to admin_path
  end
  
  private
  
  def verify_admin
    redirect_to root_path unless is_admin?
>>>>>>> 7d69b33c58c320c50a0b2d0a4573c8864e00e5ac
  end
  
end