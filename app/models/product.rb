class Product < ApplicationRecord
    has_many :bids
    has_many :product_categories
    has_many :categories, through: :product_categories
    belongs_to :user
end
