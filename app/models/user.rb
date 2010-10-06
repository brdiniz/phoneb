class User < TwitterAuth::GenericUser
  has_many :contacts
  has_many :groups
end