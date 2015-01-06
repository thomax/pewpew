# encoding: utf-8
require 'rest_client'

module Stringgun

  class HTTP

    puts "Stringgun::HTTP"

    def self.get(url)
      response = RestClient.get(url)
      JSON.parse(response)
    end
    

    def self.post(url, string = nil)
      headers = {:content_type => :json, :accept => :json}
      body = string ? {:string => string}.to_json : {}
      response = RestClient.post(url, body, headers)
      JSON.parse(response.body)
    end

  end

end
