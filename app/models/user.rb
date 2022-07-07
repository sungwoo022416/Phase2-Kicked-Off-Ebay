class User < ApplicationRecord
    has_many :bids
    has_many :products, through: :bids
    has_many :interests
    has_many :categories, through: :interests
    has_secure_password
end
