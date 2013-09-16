class Identity < ActiveRecord::Base
  PROVIDERS = %w{github}

  belongs_to :user,
    inverse_of: :identities

  validates_presence_of :uid
  validates_presence_of :provider
  validates_presence_of :user

  validates_inclusion_of :provider,
    in: PROVIDERS,
    allow_blank: false
end
