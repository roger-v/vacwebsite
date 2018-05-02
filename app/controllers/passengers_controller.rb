class PassengersController < ApplicationController
  def new
    @passenger = Passenger.new
  end
  def index
    @passenger = Passenger.all
  end
  def travel
  end
  def faq
  end

  private
  def registration_params
    params.require(:registration).permit(
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