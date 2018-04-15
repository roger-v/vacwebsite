class DonationsController < ApplicationController
  
  def create
    @donation = Donation.new(donation_params)
    if @donation.save
      
    else
      render "donate/form"
    end
    
  end
  
  private 
  
  def donation_params
    params.require(:donation).permit(
      :firstname, 
      :lastname,
      :address,
      :city,
      :state,
      :zipcode,
      :phone,
      :email,
      :amount,
      :campaign,
      :anonymous,
      :donoralias,
      :honoree
    )
  end
  
end