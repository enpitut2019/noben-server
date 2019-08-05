class Note < ApplicationRecord
  has_many :pages
  has_many :comments

  accepts_nested_attributes_for :pages

  validates :subject_name, presence: true
end
