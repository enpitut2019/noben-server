class Note < ApplicationRecord
  has_many :pages

  accepts_nested_attributes_for :pages

  validates :subject_name, presence: true
end
