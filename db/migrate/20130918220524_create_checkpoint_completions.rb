class CreateCheckpointCompletions < ActiveRecord::Migration
  def change
    create_table :checkpoint_completions do |t|
      t.integer :user_id, null: false
      t.integer :checkpoint_id, null: false
      t.datetime :completed_at

      t.timestamps
    end
  end
end
