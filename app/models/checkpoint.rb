class Checkpoint < ActiveRecord::Base
  belongs_to :section,
    inverse_of: :checkpoints

  validates_presence_of :section
  validates_presence_of :title
  validates_presence_of :content
end
