require 'faraday'
require 'faraday_middleware'

module Feed
  module Connection

    def connect(params={})
      raise(ArgumentError, "missing api_key paramter!") if not params.has_key?(:key)
      @params = params
      @conn = Faraday.new('https://www.googleapis.com/plus/v1/') do |c|
        c.use FaradayMiddleware::ParseJson,       content_type: 'application/json'
        #c.use Faraday::Response::Logger,          Logger.new('gplus_ruby_client.log')
        c.use FaradayMiddleware::FollowRedirects, limit: 3
        c.use Faraday::Response::RaiseError       # raise exceptions on 40x, 50x responses
        c.use Faraday::Adapter::NetHttp
      end
      @conn.headers[:user_agent] = 'gplus_ruby_client'
    end

    def get(path, params = nil)
    	input_params = @params.merge(params)
    	response = @conn.get path, input_params
    end

  end
end


