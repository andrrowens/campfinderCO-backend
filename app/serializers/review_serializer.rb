class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :content, :image
end
