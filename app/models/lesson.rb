class Lesson < ActiveRecord::Base
  has_many :sections,
    inverse_of: :lesson

  has_many :checkpoints,
    through: :sections

  has_many :checkpoint_completions,
    through: :checkpoints

  validates_presence_of :title
end
