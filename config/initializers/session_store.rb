# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_issue_report_session',
  :secret      => '5af4439752f13d246f16c7c1e58a8b89cb079f38546f94dcb01a66864b8a6fcf1d1d62dc1a99f8b79db9412bb529320a2a50420a6d2f906c79c7dcd4d06e9bcd'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
