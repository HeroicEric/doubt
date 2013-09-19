class CheckpointCompletionSerializer < ActiveModel::Serializer
  embed :id
  attributes :id

  has_one :checkpoint
  # has_one :user
end
