class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :resource, :tag
  has_one :user
end
