class Note < ApplicationRecord
  has_many :pages
  has_many :comments
  has_many :tags

  accepts_nested_attributes_for :pages
  accepts_nested_attributes_for :tags

  validates :subject_name, presence: true
end
