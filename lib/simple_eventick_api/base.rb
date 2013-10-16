module SimpleEventickApi
  class Base
    
	  def self.resource(res)
	    @resource = res
	  end

	  def self.get(opts)
	  	SimpleEventickApi.get(@resource, opts)
	  end
    
  end
end
