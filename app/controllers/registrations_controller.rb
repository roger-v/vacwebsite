class RegistrationsController < ApplicationController
    
    def create
        
        case params[:preferred]
        when 'home'
            params[:registration][:preferhome]=true
        when 'work'
            params[:registration][:preferwork]=true
        when 'mobile'
            params[:registration][:prefermobile]=true
        end
        
        
        case params["typeoptions"]
        when 'both'
            params[:registration][:registertype_both]=true
        when 'aircraft'
            params[:registration][:registertype_aircraft]=true
        when 'pilot'
            params[:registration][:registertype_pilot]=true
        end
        
        
         @registration = Registration.new(registration_params)
         
         if @registration.save
             redirect_to '/pilots#index'
         else
             redirect_to '/pilots#index'
         end
         
    end
    
    
    private
    
    def registration_params
    params.require(:registration).permit(
      :firstname,
      :middlename,
      :lastname,
      :address,
      :city,
      :state,
      :zipcode,
      :homephone,
      :workphone,
      :mobilephone,
      :preferhome,
      :preferwork,
      :prefermobile,
      :email,
      :description,
      :registertype_both,
      :registertype_aircraft,
      :registertype_pilot,
      :aircraftmake,
      :aircraftmodel,
      :year,
      :basename,
      :basestate,
      :basezip,
      :tailnumber,
      :faacode,
      :ownername,
      :engine,
      :speed,
      :seat,
      :cost,
      :cabin,
      :ice,
      :aircraftanon,
      :aircraftalias,
      :licensenum,
      :licensetype,
      :rated,
      :pilotanon
    )
    end
    
end
