class NoteSerializer < ActiveModel::Serializer
  attributes :id, :subject_name, :created_at, :updated_at

  has_many :pages
  has_many :comments
  has_many :tags
end
