class PassengersController < ApplicationController
  def index
    @passenger = Passenger.all
  end
  def create
    @passenger = Passenger.new(registration_params)
    if @passenger.save
      redirect_to passengers_thank_you_path
    else
      render 'travel'
    end
  end
  def travel
    @passenger = Passenger.new
  end
  def faq
  end
  
  def after_travel
    
  end

  private
  def registration_params
    params.require(:passenger).permit(
      :firstname,
      :lastname,
      :militarybranch,
      :phone,
      :militaryrank,
      :healthcarefacility,
      :numberofpassengers,
      :passengerweight,
      :departure,
      :destination,
      :date,
    )
  end
end