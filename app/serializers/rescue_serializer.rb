class RescueSerializer < ActiveModel::Serializer
  attributes :id, :title, :url, :tag
  has_one :user_id
end
