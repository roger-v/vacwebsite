=begin
#require 'rails_helper'

RSpec.describe MissionsController do
    
  describe “#index” do
    it “populates array of missions” do
      expect { get :index }.should eq([mission])
    end
    
    it "renders the :index view" do 
        get :index
        response.should render_template :index
    end
    
  end
  
=end