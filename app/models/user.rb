class User < ApplicationRecord
    
    before_save { self.email = email.downcase } #ensures email is downcased in database index
    
    validates :firstname,  presence: true, length: { maximum: 50 }
    validates :lastname,  presence: true, length: { maximum: 50 }
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
                      format: { with: VALID_EMAIL_REGEX },
                      uniqueness: { case_sensitive: false }
                      
    has_secure_password
    
    validates :password, presence: true, length: { minimum: 8, maximum: 255  }

    def self.search(search, search_attr)
      where("firstname LIKE ? OR lastname LIKE ? OR email LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
      
      if (search_attr == "firstname")
        where("firstname LIKE ?", "%#{search}%")
      end
      
      if (search_attr == "lastname")
        where("lastname LIKE ?", "%#{search}%")
      end
      
      if (search_attr == "email")
        where("email LIKE ?", "%#{search}%")
      end
    
    end

end
