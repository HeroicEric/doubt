class Lesson < ActiveRecord::Base
  has_many :sections, inverse_of: :lesson
  has_many :checkpoints, through: :sections

  validates_presence_of :title
end
