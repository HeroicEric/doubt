class LessonSerializer < ActiveModel::Serializer
  embed :id
  embed :ids

  attributes :id, :title, :description

  has_many :sections
  has_many :checkpoints
  has_many :checkpoint_completions
end
