class User < ApplicationRecord
    has_many :orders
    has_many :stocks, through: :orders
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    validates :email, presence: true
    # validates :password, presence: true
end
