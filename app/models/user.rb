class User < ActiveRecord::Base
  ROLES = %w(user admin)

  has_many :identities,
    inverse_of: :user,
    dependent: :destroy

  has_many :checkpoint_completions,
    inverse_of: :users,
    dependent: :destroy

  validates_presence_of :first_name
  validates_presence_of :last_name

  validates_presence_of :username
  validates_format_of :username, with: /\A\w+\z/

  validates_presence_of :role
  validates_inclusion_of :role, in: ROLES

  validates_presence_of :email
  validates_uniqueness_of :email
end
