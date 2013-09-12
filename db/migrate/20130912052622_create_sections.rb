class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.integer :lesson_id, null: false
      t.string :title, null: false

      t.timestamps
    end
  end
end
