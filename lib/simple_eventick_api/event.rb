require_relative 'base'

module SimpleEventickApi
  class Event < Base
    resource "events"
    
    attr_accessor :id, :start_at, :title, :tickets, :venue, :slug
    attr_reader :attendees, :all

    # constructors
    def initialize(args={})
      links = args.delete('links')
      args.each do |key, value|
        self.public_send("#{key}=", value)
      end

      # self.tickets = links['tickets'].map { |o| Ticket.new(o) } if links
    end

    def self.all (token)
      opts = { 
        basic_auth: {
          username: token
        }
      }
      response = get(opts)

      events = Array.new
      response['events'].map { |r| 
        e = self.new (r)
        events << e
      }
      events
    end

    
  end
end
