class User < ApplicationRecord
    has_secure_password
    has_many :bids
    has_many :products, through: :bids
    has_many :interests
    has_many :categories, through: :interests


    validates :name, length: { minimum: 6}
    validates :name, presence: true
    validates :name, uniqueness: true

    validates :password_digest, length: { minimum: 4}
    validates :password_digest, presence: true

    def categories_attributes=(category_attributes)
        category_attributes.values.each do |category_attribute|
          category = Category.find_or_create_by(category_attribute)
          self.categories << category
        end
      end

    def category_1
        if self.categories != []
            return "#{self.categories[0].name}"
        end
    end

    def category_2
        if self.categories.count >= 2
            return " | #{self.categories[1].name}"

        end
    end

    def category_3
        if self.categories.count >= 3 
            return " | #{self.categories[2].name}"
        end
    end
end
