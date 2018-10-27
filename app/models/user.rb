class User < ApplicationRecord
  #belongs_to :car_id, foreign_key: 'car_id', optional: true
  #belongs_to :carpool_id, foreign_key: 'carpool_id', optional: true

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end

end
