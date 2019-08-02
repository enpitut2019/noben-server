class Note < ApplicationRecord
  validates :subject, presence: true
  has_many :pages
end
