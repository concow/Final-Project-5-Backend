class Order < ApplicationRecord
    belongs_to :user
    has_many :stocks            #changed this check back 10/26 @7:30
end
