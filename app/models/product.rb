class Product < ApplicationRecord
    has_many :bids
    has_many :product_categories
    has_many :categories, through: :product_categories
    belongs_to :user

    def has_bids? 
        if self.bids == []
            return false 
        else
             return true 
        end
    end

    def max_bid 
        if self.has_bids? == true 
            self.bids.max {|b1, b2| b1.price <=> b2.price }
        else 
            "No Bids Yet"
        end
    end

    def max_bidder 
        if self.has_bids? == true 
            self.max_bid.user
        else 
            "No Bidders Yet"
        end
    end

    def max_bidder_name 
        if self.has_bids? == true 
            self.max_bid.user.name
        else 
            "No Bidders Yet"
        end
    end

    def max_bid_price 
        if self.has_bids? == true 
            self.max_bid.price
        else 
            return 0.00
        end
    end
end
