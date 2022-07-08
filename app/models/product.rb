class Product < ApplicationRecord
    has_many :bids
    has_many :product_categories
    has_many :categories, through: :product_categories
    belongs_to :user

    
    def categories_attributes=(category_attributes)
        category_attributes.values.each do |category_attribute|
            category = Category.find_or_create_by(category_attribute)
            self.categories << category 
        end
    end 

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

    def self.ordered_by_price
        Product.all.sort_by(&:price).reverse
    end

    def under_value 
        difference = (self.price.to_f - self.max_bid_price.to_f)
        if difference > 0 
            return "🟢 $#{difference} BELOW MSRP"
        elsif difference < 0 
            return "❤️‍🔥 HOT ITEM"
        end
    end

    def self.search(search)
        if search == "" or search == " "
            Product.all
        elsif search 
            Product.where('category LIKE :search OR name LIKE :search', search: search) 
        else 
            Product.all
        end
    end
end
