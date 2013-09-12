class Section < ActiveRecord::Base
  belongs_to :lesson,
    inverse_of: :sections

  validates_presence_of :lesson
  validates_presence_of :title
end
