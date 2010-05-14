class User < TwitterAuth::GenericUser
  has_many :phones
end
