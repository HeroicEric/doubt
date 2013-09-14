class LessonSerializer < ActiveModel::Serializer
  embed :id
  attributes :id, :title
end
