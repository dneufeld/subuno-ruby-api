require "httparty"

module SubunoRubyAPI
  class Error < StandardError; end

  include HTTParty
  base_uri 'https://api.subuno.com'
  class << self
    attr_accessor :apikey
  end

  def self.parse(response)
    return response.parsed_response
  end

  def self.lookup(options={}, apikey=nil)
    validate
    options.merge!(:apikey => apikey || SubunoRubyAPI.apikey)
    response = get('/v1', :query => options)

    parse(response)
  end
  
  protected
  def self.validate
    raise ArgumentError, 'api key required' if @apikey.nil?
  end
end

