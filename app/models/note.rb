class Note < ApplicationRecord
  has_many :pages

  validates :subject_name, presence: true
end
