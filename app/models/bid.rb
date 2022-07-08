class Bid < ApplicationRecord
    belongs_to :product
    belongs_to :user

    validates :user_id, presence: true
    def self.trending_products
        Bid.all.sort_by(&:created_at).reverse.first(10)
    end

   
end 
