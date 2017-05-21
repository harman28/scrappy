require 'dotenv'
require 'twilio-ruby'

@env = ENV['SCRAPPY_ENV'] == 'live' ? 'live' : 'test'
Dotenv.load("environment/#{@env}.env")

Twilio.configure do |config|
  config.account_sid = ENV['twilio_sid']
  config.auth_token  = ENV['twilio_token']
end

@client = Twilio::REST::Client.new

@client.messages.create(
  from: '+12536666067',
  to:   '+919823967243',
  body: 'Test message from Scrappy'
)

puts "Bas."
