# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_flitter_session',
  :secret      => 'f6d12068f83080ade45ff12635d311915a5b161f25b35bb1f4eee70548dd053a99d262691909ed9fd186576a945c661719fd060193ff659e4729d4e3da3e4e3a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
