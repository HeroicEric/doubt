class Section < ActiveRecord::Base
  belongs_to :lesson,
    inverse_of: :sections

  has_many :checkpoints,
    inverse_of: :section

  validates_presence_of :lesson
  validates_presence_of :title
end
