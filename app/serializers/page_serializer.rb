class PageSerializer < ActiveModel::Serializer
  attributes :id, :order, :note_id, :image_url
end
