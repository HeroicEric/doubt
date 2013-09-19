class ChangeLessonDescriptionType < ActiveRecord::Migration
  def up
    change_column :lessons, :title, :string
    change_column :lessons, :description, :text
  end

  def down
    change_column :lessons, :title, :string
    change_column :lessons, :description, :text
  end
end
