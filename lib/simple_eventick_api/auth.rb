require_relative 'base'

module SimpleEventickApi
  class Auth < Base
    resource 'tokens'

    def self.authenticate (user, password)

      opts = { 
        basic_auth: {
          username: user, 
          password: password
        }
      }
      response = get(opts)

      response['token']
      rescue 
      nil
    end
  end
end