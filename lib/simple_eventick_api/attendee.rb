require_relative 'base'

module SimpleEventickApi
  class Attendee < Base
    

    attr_accessor :id, :name
    attr_accessor :code, :ticket_type, :checked_at, :event_id, :email

    def initialize(args={})
      args.each do |key, value|
        self.public_send("#{key}=", value)
      end
    end

    # class methods
    def self.all(token, event_id)
      resource "events/#{event_id}/attendees"

      response = get(token)
      
      attendees = response['attendees'].map { |json| self.new json }
      attendees.each { |a| a.event_id = event_id }
    end
  end
end
