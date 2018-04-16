class Registration < ApplicationRecord
    
    before_save { self.email = email.downcase } 
    
    validates :firstname, presence: true
    validates :lastname, presence: true
    validates :address, presence: true
    validates :city, presence: true
    validates :state, presence: true
    validates :zipcode, presence: true
    validates :email, presence: true
    
end
