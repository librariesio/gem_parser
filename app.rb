require 'bundler'

Bundler.require

require_relative 'lib/gem_parser'

class RubyDepParser < Sinatra::Base
  use Rack::Deflater

  configure do
    set :dump_errors, false
    set :raise_errors, true
    set :show_exceptions, false
  end

  post '/gemspec' do
    content_type :json
    GemParser.new(:gemspec, params[:body]).to_json
  end

  post '/gemfile' do
    content_type :json
    GemParser.new(:gemfile, params[:body]).to_json
  end

  post '/podfile' do
    content_type :json
    GemParser.new(:podfile, params[:body]).to_json
  end

  post '/podspec' do
    content_type :json
    GemParser.new(:podspec, params[:body]).to_json
  end
end
