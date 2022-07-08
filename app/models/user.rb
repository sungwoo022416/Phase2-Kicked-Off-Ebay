class User < ApplicationRecord
    has_secure_password
    has_many :bids
    has_many :products, through: :bids
    has_many :interests
    has_many :categories, through: :interests

    validates :name, length: { minimum: 6}
    validates :name, presence: true
    validates :name, uniqueness: true

    validates :password, length: { minimum: 4}
    validates :password, presence: true

    validates :password_confirmation, presence: true
end
