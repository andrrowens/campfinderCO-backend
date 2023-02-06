class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :content, :image, :user_id
end
