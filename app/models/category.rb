class Category < ApplicationRecord
    has_many :interests
    has_many :product_categories
    has_many :products, through: :product_categories
end
