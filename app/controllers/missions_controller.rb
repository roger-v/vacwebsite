class MissionsController < ApplicationController
    def index
        @missions = Mission.all
        @missions = Mission.order('date ASC')
        @missions_by_date = @missions.group_by(&:date)
        @date = params[:date] ? Date.parse(params[:date]) : Date.today
        
    end
    
    def new
        @mission = Mission.new
    end
    
    def edit
      if logged_in? && current_user.admin
        @mission = Mission.find(params[:id])
      end
    end
    
    def create
      if logged_in? && current_user.admin
         @mission = Mission.new(mission_params)
         if @mission.save
         redirect_to @mission
         else
         render 'new'
         end
      end
    end
    
    def update
      if logged_in? && current_user.admin
         @mission = Mission.find(params[:id])
 
         if @mission.update(mission_params)
          redirect_to @mission
         else
          render 'edit'
         end
      end
    end
 
    def destroy
      if logged_in? && current_user.admin
     @mission = Mission.find(params[:id])
     @mission.destroy
 
     redirect_to missions_path
      end
    end
    
    def show
         @mission = Mission.find(params[:id])
    end
    
    private
    def  mission_params
        params.require(:mission).permit(:date, :from, :to, :passengers, :weight)
    end
    
end
