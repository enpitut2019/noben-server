class PageSerializer < ActiveModel::Serializer
  attributes :id, :order, :note_id
  attribute :image

  def image
    object.image.url
  end
end
