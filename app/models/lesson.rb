class Lesson < ActiveRecord::Base
  has_many :sections,
    inverse_of: :lesson

  validates_presence_of :title
end
