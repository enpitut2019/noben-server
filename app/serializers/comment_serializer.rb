class CommentSerializer < ActiveModel::Serializer
  attributes :id, :note_id, :content, :created_at, :updated_at 
end
