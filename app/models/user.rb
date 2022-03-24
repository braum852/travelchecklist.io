class User < ApplicationRecord
    has_secure_password
    #Adds methods to set and authenticate against a BCrypt password
    validates :username, uniqueness: true, length: { minimum: 6 }
    validates :password, length: { minimum: 6 }

end
