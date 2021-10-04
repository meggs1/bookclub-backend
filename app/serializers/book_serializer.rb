class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :image, :rating, :publisher
  has_one :user
  has_one :author
  has_one :genre
end
