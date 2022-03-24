class User < ApplicationRecord
    has_secure_password
    #Adds methods to set and authenticate against a BCrypt password
end
