class Page < ApplicationRecord
    mount_uploader :image, ImageUploader

    belongs_to :note

    validates :order, presence: true
    validates :image, presence: true
end
