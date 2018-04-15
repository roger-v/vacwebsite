class Donation < ApplicationRecord
    # What fields should have a validated presence ?
    before_save { self.email = email.downcase } #ensures email is downcased in database index
    
    validates :amount,  presence: true

end
