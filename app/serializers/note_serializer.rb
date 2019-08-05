class NoteSerializer < ActiveModel::Serializer
  attributes :id, :subject_name, :created_at, :updated_at

  has_many :pages
end
