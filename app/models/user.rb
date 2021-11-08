class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
    # Regex
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    before_save {self.email = email.downcase}

    validates :name, presence: true, 
                     length: { maximum: 50 }  
    validates :email, presence: true, 
                      length: { maximum: 255 },
                      format: { with: VALID_EMAIL_REGEX },
                      uniqueness: true
    
    #Password
    
    validates :password, presence: true,
                         length: { minimum: 6 }
    
end
