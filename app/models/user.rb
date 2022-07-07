class User < ApplicationRecord
    has_secure_password
    
    has_many :bids
    has_many :products, through: :bids
    has_many :interests
    has_many :categories, through: :interests
end
