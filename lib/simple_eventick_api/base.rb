module SimpleEventickApi
  class Base
    
	  def self.resource(res)
	    @resource = res
	  end

	  def self.get(token)
	  	opts = { 
        basic_auth: {
          username: token
        }
      }

	  	SimpleEventickApi.get(@resource, opts)
	  end

	
	protected
	  def self.replace_resource_param(name, value)
	  	
	    @resource.sub name.to_s, value.to_s
	  end    
		
  end
end
