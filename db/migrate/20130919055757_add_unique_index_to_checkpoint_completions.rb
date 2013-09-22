class AddUniqueIndexToCheckpointCompletions < ActiveRecord::Migration
  def change
    add_index :checkpoint_completions, [:user_id, :checkpoint_id], unique: true
  end
end
