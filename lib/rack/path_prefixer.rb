module Rack
  # Adds some meta info like host name to response header
  class PathPrefixer
    VERSION = File.read( File.join(File.dirname(__FILE__),'..','..','VERSION') ).strip

    def initialize(app, options={})
      @app = app
      @options = options
    end

    def call(env, options={})
      env['PATH_INFO'].sub!(%r{^/#{@options[:prefix]}}, '')
      status, header, @response = @app.call(env)
      [status, header, self]
    end

    def each
      @response.each do |body|
        body = body.gsub(%{href="/},%{href="/#{@options[:prefix]}/}) if body
        yield body
      end
    end
  end
end