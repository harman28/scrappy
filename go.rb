require 'dotenv'

@env = ENV['SCRAPPY_ENV'] == 'live' ? 'live' : 'test'
Dotenv.load("environment/#{@env}.env")

p ENV['twilio_sid']
