class Note < ApplicationRecord
  mount_uploader :image_url, NoteUploader
  has_many :pages

  validates :subject_name, presence: true
  validates :image_url, presence: true
end
