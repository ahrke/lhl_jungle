class User < ActiveRecord::Base
  validates :first_name, 
            :last_name, 
            :password, 
            :email, 
            presence: true
end
