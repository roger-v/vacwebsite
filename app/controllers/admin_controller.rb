class AdminController < ApplicationController
  before_action :verify_admin
  @@sortby = nil
  def index
    
  end
  
  def users 
    
#Begin User Sort
    
    if (params[:sortby] != nil) 
      @@sortby = params[:sortby]
    elsif (params[:sortby] == @@sortby)
      #switch order.
      
    end
    @page = params[:page].to_i
    @limit = 3
    if (@@sortby)
      @users = User.order(@@sortby).limit(@limit).offset(@limit*(@page - 1))
    else
      @users = User.limit(@limit).offset(@limit*(@page - 1))
    end
    @num_pages = (User.all.length / @limit) + 1
    @i = 1 + ((@page - 1) * @limit)
    if @page > @num_pages || @page < 1
      redirect_to admin_users_path(page: 1)
    end

    #@users = User.last(@limit)
    
#End User Sort
    
    #@users = User.all
 
#Begin User Search function

    #Using built-in Where function
    
    if params[:search]
      
      if params[:search_attr] == "firstname"
        @search_users = @users.where(:firstname => params[:search])
      
      elsif params[:search_attr] == "lastname"
        @search_users = @users.where(:lastname => params[:search])
      
      elsif params[:search_attr] == "email"
        @search_users = @users.where(:email => params[:search])
      
      else
        @search_users = @users.where(:firstname => params[:search]) + User.where(:lastname => params[:search]) + User.where(:email => params[:search])
      end
      
    end
    
    if params[:search] == ""
      @search_users = @users #User.all
    end
 
#End User Search



#Begin User Filter
    
    if params[:filter_admin] == '1'
      @admin_users = @users.where(:admin => true)
    else
      @admin_users = []
    end
    
    if params[:filter_pilot] == '1'
      @pilot_users = @users.where(:pilot => true)
    else
      @pilot_users = []
    end
    
    if params[:filter_veteran] == '1'
      @veteran_users = @users.where(:veteran => true)
    else
      @veteran_users = []
    end
    
    if params[:filter_donor] == '1'
      #@users = @users.where(:donor => true)
      @donor_users = @users.where("donor = :donor", { donor: true})
    else
      @donor_users = []
    end
   
    @filter_users = @admin_users | @pilot_users | @veteran_users | @donor_users
    
#End User Filter
    
    
#Begin User Array Selection

    #If a search was entered, use search_users array
    #Else, If filters were applied, use @filter_users array
    #Else, use the given array (that was probably sorted)
    
    if params[:search]
      @users = @search_users
    elsif @filter_users != []
      @users = @filter_users
    else
      @users = @users
    end
    
#End User Array Selection

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