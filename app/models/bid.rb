class Bid < ApplicationRecord
    belongs_to :product
    belongs_to :user

    def self.trending_products
        Bid.all.sort_by(&:created_at).reverse.first(10)
    end

   
end 
