class PageSerializer < ActiveModel::Serializer
  attributes :id, :order, :note_id
  attribute :image

  private

  def image
    object.image.url
  end
end
