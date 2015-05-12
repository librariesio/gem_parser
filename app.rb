require 'bundler'

Bundler.require

require_relative 'lib/gem_parser'

class RubyDepParser < Sinatra::Base
  use Rack::Deflater
  get '/' do
    content_type :json
    '{}'
  end

  post '/gemspec' do
    content_type :json
    GemParser.new(:gemspec, params[:contents]).to_json
  end

  post '/gemfile' do
    content_type :json
    GemParser.new(:gemfile, params[:contents]).to_json
  end
end
