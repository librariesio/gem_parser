require_relative 'spec_helper'

describe "parsing endpoints" do
  it "should successfully parse gemspecs" do
    path = File.expand_path("../fixtures/example.gemspec", __FILE__)
    file = File.open(path).read
    post '/gemspec', body: file
    last_response.body.must_include "{\"warden\":\"~> 1.2.3\",\"orm_adapter\":\"~> 0.1\",\"bcrypt\":\"~> 3.0\",\"thread_safe\":\"~> 0.1\",\"railties\":\"< 5, >= 3.2.6\",\"responders\":\">= 0\"}"
  end

  it "should successfully parse Gemfiles" do
    path = File.expand_path("../fixtures/Gemfile", __FILE__)
    file = File.open(path).read
    post '/gemfile', body: file
    last_response.body.must_include "{\"oj\":\">= 0\",\"rails\":\"= 4.2.0\",\"leveldb-ruby\":\"= 0.15\",\"spring\":\">= 0\",\"thin\":\">= 0\",\"puma\":\">= 0\",\"rails_12factor\":\">= 0\",\"bugsnag\":\">= 0\"}"
  end
end
