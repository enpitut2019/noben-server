class Note < ApplicationRecord
  validates :image_url, presence: true
end
