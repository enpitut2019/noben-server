class Note < ApplicationRecord
  has_many :pages, dependent: :destroy
  has_many :comments, dependent: :destroy

  # TODO: tagを共有するようになったら↓のdependentは消す
  has_many :tags, dependent: :destroy

  accepts_nested_attributes_for :pages
  accepts_nested_attributes_for :tags

  validates :subject_name, presence: true
end
