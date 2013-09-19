class CheckpointSerializer < ActiveModel::Serializer
  embed :id
  attributes :id, :title, :body, :isCompleted

  has_one :section, key: :section

  # TODO: Don't do this when serializing a bunch of checkpoints at once
  def isCompleted
    !object.user_checkpoints.where("user_id = ? AND completed_at IS NOT NULL", current_user.id).empty?
  end
end
