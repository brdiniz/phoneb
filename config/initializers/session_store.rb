# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_phonebook_session',
  :secret      => '06b0fff21f8b4574ce54607f6d02f36b6b71befe38d8e719d045076ffb106feb5ee28647615d52f0c0195467ff5922be9fbe8e41a99335ee5f76cdf33195e4f5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
