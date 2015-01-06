# encoding: utf-8

# Wraps the chores of starting and using a stringgun.io session
module Stringgun

  class Client

    DEFAULT_HOST = 'http://stringgun.io'

    def self.aquire_target(options = {})
      Client.new(options)
    end


    attr_reader :get_url, :post_url
    def initialize(options = {})
      if options[:get_url] && options[:post_url]
        @get_url = options[:get_url]
        @post_url = options[:post_url]
      else
        init_from_scratch(options[:stringgun_host] || DEFAULT_HOST)
      end
      self.urls
    end


    def get
      HTTP.get(get_url)
    end


    def post(string)
      HTTP.post(post_url, string)
    end


    def urls
      {get_url: get_url, post_url: post_url}
    end

    # analogies schmanalogies
    alias_method :inspect_target, :get
    alias_method :fire, :post


    private

    def init_from_scratch(stringgun_host)
      result = begin
        HTTP.post("#{stringgun_host}/new")
      rescue => e
        # TODO: handle whatever comes this way
        raise e
      end
      @get_url = result['getUrl']
      @post_url = result['postUrl']
    end

  end

end
