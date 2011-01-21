# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Inventory_System_session',
  :secret      => '924ea9283aae26a3c839b00f95d6d823b8e27145c904c601fa0ea59d9d05ecf4965659a746de3233405bf8e69e16f5bbce36fd51e9f90b0ef4adbf98d6b9113a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
