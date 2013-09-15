class SectionSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :title, :description

  has_one :lesson, key: :lesson
end
