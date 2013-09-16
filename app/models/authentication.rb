class Authentication
  def initialize(auth_data)
    @auth_data = auth_data
  end

  def user
    @user ||= user_from_omniauth
  end

  def authenticated?
    user.present?
  end

  private
  # TODO: Make this less ugly and write tests
  def user_from_omniauth
    identity = identity_from_omniauth

    info = @auth_data.info
    user = identity.user || User.new do |u|
      u.first_name = info.name.split[0]
      u.last_name = info.name.split[1]
      u.email = info.email
      u.username = info.nickname

      u.identities << identity
    end
    user.save!

    user
  end

  def identity_from_omniauth
    identities = Identity.where(@auth_data.slice(:provider, :uid))

    identity = identities.first_or_initialize do |i|
      i.provider = @auth_data.provider
      i.uid = @auth_data.uid
    end

    identity
  end
end
