# encoding: utf-8

require 'httparty'

module Stringgun

  class Client

    DEFAULT_HOST = 'http://stringgun.io'

    def self.aquire_target(options = {})
      self.new(options)
    end


    attr_reader :target, :token, :stringgun_host
    def initialize(options = {})
      @stringgun_host = options[:stringgun_host] || DEFAULT_HOST
      if options[:get_url] && options[:post_url]
        @get_url = options[:get_url]
        @post_url = options[:post_url])
      else
        init_from_scratch
      end
      self.urls
    end


    alias_method :inspect_target, :get
    def get
      response = HTTParty.get(get_url)
      JSON.parse(response.body)
    end


    alias_method :fire, :post
    def post(string)
      response = HTTParty.post(post_url, :body => {:string => string})
      JSON.parse(response.body)
    end


    def urls
      {get_url: get_url, post_url: post_url}
    end


    private

    def init_from_scratch
      response = HTTParty.post("#{stringgun_host}/new")
      unless response.code == 201
        message = "Unexpected response from #{stringgun_host}: #{response}"
        raise RuntimeError.new(message)
      end
      result_hash = JSON.parse(response.body)
      @get_url = result_hash['get_url']
      @post_url = result_hash['post_url']
    end

  end

end
