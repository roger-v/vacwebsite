class DonationsController < ApplicationController
  
  def create
    @donation = Donation.new(donation_params)
    if @donation.save
      redirect_to paypal_url(@donation.amount)
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
  
  def destroy
    if is_admin?
      donation = Donation.find_by(id: params[:id])
      donation.destroy
      redirect_back(fallback_location: root_path)
    end
  end
  
  private
  
  def paypal_url(amt)
    "https://www.paypal.com/webscr?cmd=_donations&business=walt.fricke%40veteransairlift.org&notify_url=http%3a%2f%2fwww.veteransairlift.org%2fm%2fDonate_Notify.aspx&amount=#{amt}&item_name=Online+Donation+to+Veterans+Airlift+Command&currentcy_code=USD&no_note=1&no_shipping=1&return=http%3a%2f%2fwww.veteransairlift.org%2fm%2fDonate_Success.aspx&cbt=Return+to+the+Veterans+Airlift+Command+Website&cancel_return=http%3a%2f%2fwww.veteransairlift.org%2fm%2fDonate_Cancel.aspx&address1=&city=&country=US&email=&first_name=&last_name=&home_phone=&state=&zip=&custom=Anon%3dN%7cRecogName%3d%7cHName%3d%7cPhone%3d%7cCampaign%3dGENERAL"
  end
  
end