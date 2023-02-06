class CampsiteSerializer < ActiveModel::Serializer
  attributes :id, :name, :region, :description, :elevation, :coordinates, :image
end
