class DonationsController < ApplicationController
  
  def create
    @donation = Donation.new(donation_params)
    puts "name-: " + "#{@donation.firstname}"
    
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