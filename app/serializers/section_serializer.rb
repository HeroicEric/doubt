class SectionSerializer < ActiveModel::Serializer
  embed :id
  embed :ids
  attributes :id, :title, :description

  has_one :lesson
  has_many :checkpoints
end
