class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.integer :title, null: false
      t.string :description

      t.timestamps
    end
  end
end
