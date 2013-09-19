class CheckpointSerializer < ActiveModel::Serializer
  embed :id
  attributes :id, :title, :body, :is_completed

  has_one :section

  # TODO: Don't do this when serializing a bunch of checkpoints at once
  def is_completed
    !object.checkpoint_completions.where(user_id: current_user.id).empty?
  end
end
