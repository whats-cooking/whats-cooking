class User < ActiveRecord::Base
  def self.from_omniauth(auth)

    puts "HORSE"
    puts auth

    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid      = auth.uid
      user.name     = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.image_url = auth.info.image
      user.save
    end
  end
end