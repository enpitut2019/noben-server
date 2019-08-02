class NoteSerializer < ActiveModel::Serializer
  attributes :id, :subject,:created_at, :updated_at;
  has_many :pages
end
