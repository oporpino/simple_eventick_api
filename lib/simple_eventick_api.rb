require "simple_eventick_api/version"
require 'simple_eventick_api/base'
require 'simple_eventick_api/event'

module SimpleEventickApi

	BASE_URL = 'www.eventick.com.br/api'
	API_VERSION = 'v1'
  
  def self.get(resource, opts)
    url = "https://#{BASE_URL}/#{API_VERSION}/#{resource}.json"

    response = HTTParty.get(url, opts)
    parse(response.body)
  end 

  private
  def self.parse (body)
    JSON.parse(body)
  end
  
end
