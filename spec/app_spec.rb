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

  it "should successfully parse Podfiles" do
    path = File.expand_path("../fixtures/Podfile", __FILE__)
    file = File.open(path).read
    post '/podfile', body: file
    last_response.body.must_include "{\"Artsy-UIButtons\":\">= 0\",\"ORStackView\":\">= 0\",\"FLKAutoLayout\":\">= 0\",\"ISO8601DateFormatter\":\"= 0.7\",\"ARCollectionViewMasonryLayout\":\"~> 2.0.0\",\"SDWebImage\":\"~> 3.7\",\"SVProgressHUD\":\">= 0\",\"CardFlight\":\">= 0\",\"Stripe\":\">= 0\",\"ECPhoneNumberFormatter\":\">= 0\",\"UIImageViewAligned\":\">= 0\",\"DZNWebViewController\":\">= 0\",\"Reachability\":\">= 0\",\"ARTiledImageView\":\">= 0\",\"XNGMarkdownParser\":\">= 0\",\"SwiftyJSON\":\">= 0\",\"Swift-RAC-Macros\":\">= 0\",\"FBSnapshotTestCase\":\">= 0\",\"Nimble-Snapshots\":\">= 0\",\"Quick\":\">= 0\",\"Forgeries\":\">= 0\"}"
  end
end
