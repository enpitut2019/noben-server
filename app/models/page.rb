class Page < ApplicationRecord
    belongs_to :note

    validates :order, presence: true
    validates :image_url, presence: true
end
