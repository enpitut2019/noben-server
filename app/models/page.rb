class Page < ApplicationRecord
    mount_uploader :image_url, PageUploader

    belongs_to :note

    validates :order, presence: true
    validates :image_url, presence: true
end
