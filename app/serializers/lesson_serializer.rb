class LessonSerializer < ActiveModel::Serializer
  embed :id
  attributes :id, :title, :description
end
