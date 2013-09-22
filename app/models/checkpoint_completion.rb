class CheckpointCompletion < ActiveRecord::Base
  belongs_to :user,
    inverse_of: :checkpoint_completions

  belongs_to :checkpoint,
    inverse_of: :checkpoint_completions

  validates_presence_of :user
  validates_presence_of :checkpoint
  validates_uniqueness_of :user_id, scope: :checkpoint_id
end
