class CheckpointSerializer < ActiveModel::Serializer
  embed :id
  attributes :id, :title, :body

  has_one :section
  has_many :checkpoint_completions
end
