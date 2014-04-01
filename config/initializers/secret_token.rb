# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
MultitenancyExample::Application.config.secret_key_base = 'caf7492b8d52257cc6b49d35ec6b30e9ea413e5cfedb98f2e484ec77091dbf8aaafda4e97f7d925d6760726e1703211c1b287e33ab1786580b4176050e272fae'
