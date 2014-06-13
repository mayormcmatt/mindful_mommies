# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use existing token
    File.read(token_file).chomp
  else
    # Gen. new token file, store in token_file
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    return token
  end
end

Mommies::Application.config.secret_key_base = secure_token
# Mommies::Application.config.secret_key_base = '7b6a6242707c8046edfa96ecc059468b277fe01034772f46657bcf7d0c69f1a4e413239a06f835e823cbdb956df14d7f3f1052ed95aeb1f41277b93d0ff1aebd'
