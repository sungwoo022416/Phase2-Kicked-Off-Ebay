class Product < ApplicationRecord
    has_many :bids
    has_many :product_categories
    has_many :categories, through: :product_categories
    belongs_to :user

    def max_bid
        if self.bids == []
            return 0.00
        else 
            self.bids.max { |b1, b2| b1.price <=> b2.price }.price
        end
    end
end
