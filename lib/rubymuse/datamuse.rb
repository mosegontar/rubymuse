require 'httparty'

class Datamuse
  include HTTParty

  base_uri 'api.datamuse.com'

  def self.words(**kwargs)
    resp = get('/words', query: kwargs)
    resp.parsed_response
  end

  def self.sug(**kwargs)
    resp = get('/sug', query: kwargs)
    resp.parsed_response
  end
end