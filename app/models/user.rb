class User < ActiveRecord::Base
  has_secure_password
  has_many :tweets

  def slug
    username.gsub(" ", "-").downcase
  end

  def self.find_by_slug(slug)
    all.find{|u| u.slug == slug}
  end
end