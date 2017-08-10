require 'httparty'


class Datamuse

  include HTTParty

  base_uri 'api.datamuse.com'

  def self.words(**kwargs)
    resp = get('/words', query: kwargs)
    resp.parsed_response
  end

end