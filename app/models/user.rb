class User < ActiveRecord::Base
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :username
  validates_presence_of :role

  validates_presence_of :email
  validates_uniqueness_of :email
end
