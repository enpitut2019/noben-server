class Page < ApplicationRecord
    validates :order, presence: true
    validates :image_url, presence: true
    belongs_to :note
end