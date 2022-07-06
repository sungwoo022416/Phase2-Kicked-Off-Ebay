class User < ApplicationRecord
    has_many :bids
    has_many :products, through: :bids
    has_many :interest
    has_many :categories, through: :interests
end
