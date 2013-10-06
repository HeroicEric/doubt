class UserSerializer < ActiveModel::Serializer
  embed :id
  attributes :id, :first_name, :last_name, :username
end
