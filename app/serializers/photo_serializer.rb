class PhotoSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :artist
end
