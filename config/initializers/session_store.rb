# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_factual_session',
  :secret      => '661091c0cfb5dab7bd3f5fb479ed11623ec5c105247b13e56719b7abed40bba92e38bcf0a7d92cde515a2521fb06672cffcb32dab24704c07d52b673ce9b4269'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
