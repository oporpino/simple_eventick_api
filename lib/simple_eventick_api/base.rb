module SimpleEventickApi
  class Base
    
	  def self.resource(res)
	    @resource = res
	  end

	  def self.get(token, more_opts = {})
	  	opts = { 
        basic_auth: {
          username: token
        }
      }

      opts = opts.merge(more_opts)

	  	SimpleEventickApi.get(@resource, opts)
	  end

	
	protected
	  def self.replace_resource_param(name, value)
	  	
	    @resource.sub name.to_s, value.to_s
	  end    
		
  end
end
