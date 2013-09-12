class Lesson < ActiveRecord::Base
  has_many :sections,
    inverse_of: :section

  validates_presence_of :title
end
