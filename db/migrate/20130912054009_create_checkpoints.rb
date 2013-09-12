class CreateCheckpoints < ActiveRecord::Migration
  def change
    create_table :checkpoints do |t|
      t.integer :section_id, null: false
      t.string :title, null: false
      t.text :content, null: false

      t.timestamps
    end
  end
end
