class Shop < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :area
    belongs_to :genre
end
