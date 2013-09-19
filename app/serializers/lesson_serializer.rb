class LessonSerializer < ActiveModel::Serializer
  embed :id
  embed :ids

  attributes :id, :title, :description

  has_many :sections, key: :sections
  has_many :checkpoints, key: :checkpoints
end
