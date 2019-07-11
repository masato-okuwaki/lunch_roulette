class Shop < ApplicationRecord
    belongs_to :user
    belongs_to :area
    belongs_to :genre
end
