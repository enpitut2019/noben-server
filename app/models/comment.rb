class Comment < ApplicationRecord
  belongs_to :note

  validates :content, presence: true
  validates :user_name, presence: true
end
