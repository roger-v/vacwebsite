class WelcomeController < ApplicationController
  def index
    @icons = ["triprequest", "calendar", "sponsors", "donate", "register", "advisory"]
    @icondesc = ["TRIP REQUEST", "OPEN MISSIONS", "CORPORATE SPONSORS", "DONATE",
    "REGISTER YOUR AIRCRAFT", "OUR ADVISORY BOARD"]
    @iconpaths = [passengers_travel_path, pilots_available_missions_path,
    corporate_recognition_path, donate_path, aircraft_registration_path, advisory_board_path]
    
  end
  def advisory_board
    
  end
  def signup
    
  end
  def login
    
  end
end