class Comment < ApplicationRecord
  belongs_to :note

  validates :content, presence: true
end
