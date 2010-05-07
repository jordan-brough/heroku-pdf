# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_heroku-pdf_session',
  :secret      => '2da24bcf63f58c3fb6bbc88749fd8a596d07475b8b834db6b225d0e0a7e73d15057630ca67d89740315cdcc9f58ff8dcb76ed8acee8380db44c769986266b19f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
