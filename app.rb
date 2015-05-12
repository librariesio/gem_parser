require 'bundler'

Bundler.require

require_relative 'lib/gem_parser'

class RubyDepParser < Sinatra::Base
  use Rack::Deflater

  before do
    request.body.rewind
    @request_payload = request.body.read
  end

  post '/gemspec' do
    content_type :json
    GemParser.new(:gemspec, @request_payload).to_json
  end

  post '/gemfile' do
    content_type :json
    GemParser.new(:gemfile, @request_payload).to_json
  end
end
