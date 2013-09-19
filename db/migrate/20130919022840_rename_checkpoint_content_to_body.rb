class RenameCheckpointContentToBody < ActiveRecord::Migration
  def change
    rename_column :checkpoints, :content, :body
  end
end
