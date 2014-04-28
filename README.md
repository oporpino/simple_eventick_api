# SimpleEventickApi
Everything is faster when it is simple!

_This gem provider simple way to consummig eventick api_


# Install

Add this line to your application's Gemfile:

    gem 'simple_eventick_api'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple_eventick_api

## Usage

_Get token_

	@token = SimpleEventickApi::Auth.authenticate 'email', 'password'

_Get events of a user by token_

	@events = SimpleEventickApi::Event.all token
	
_Get attendees of a event_

	#for getting all atendees without restrictions
	@atendees = SimpleEventickApi::Atendee.all token, event_id
	
	or
	
	#for getting only attendees that checkin after this date
	@atendees = SimpleEventickApi::Atendee.all token, event_id, check_at
	
_Find an especific atendee_

	@atendee = SimpleEventickApi::Atendee.find token, event_id, id

_Check-in an atendee_

	@atendee = SimpleEventickApi::Atendee.check_in token, event_id, code, checked_at

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
