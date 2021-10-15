class User < ApplicationRecord
    has_many :orders
    has_many :stocks, through: :orders

    validates :username, uniqueness: true

    has_secure_password

end
