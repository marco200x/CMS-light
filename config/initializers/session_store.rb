# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_carrito_session',
  :secret      => 'a5c979ab7f7894729f35e4c9019802a404a313047f432900d57d2f4856a0b3b8732e66fb1d0e419fddafdc381b28e85747ee59419d87b1a22f04b7da9bfaf8a0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
