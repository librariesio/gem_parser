require_relative 'spec_helper'

describe "parsing endpoints" do
  it "should successfully parse gemspecs" do
    path = File.expand_path("../fixtures/example.gemspec", __FILE__)
    file = File.open(path).read
    post '/gemspec', body: file
    last_response.body.must_include "[{\"name\":\"warden\",\"version\":\"~> 1.2.3\",\"type\":\"runtime\",\"groups\":[\"default\"]},{\"name\":\"orm_adapter\",\"version\":\"~> 0.1\",\"type\":\"runtime\",\"groups\":[\"default\"]},{\"name\":\"bcrypt\",\"version\":\"~> 3.0\",\"type\":\"runtime\",\"groups\":[\"default\"]},{\"name\":\"thread_safe\",\"version\":\"~> 0.1\",\"type\":\"runtime\",\"groups\":[\"default\"]},{\"name\":\"railties\",\"version\":\"< 5, >= 3.2.6\",\"type\":\"runtime\",\"groups\":[\"default\"]},{\"name\":\"responders\",\"version\":\">= 0\",\"type\":\"runtime\",\"groups\":[\"default\"]}]"
  end

  it "should successfully parse Gemfiles" do
    path = File.expand_path("../fixtures/Gemfile", __FILE__)
    file = File.open(path).read
    post '/gemfile', body: file
    last_response.body.must_include "[{\"name\":\"oj\",\"version\":\">= 0\",\"type\":\"runtime\",\"groups\":[\"default\"]},{\"name\":\"rails\",\"version\":\"= 4.2.0\",\"type\":\"runtime\",\"groups\":[\"default\"]},{\"name\":\"leveldb-ruby\",\"version\":\"= 0.15\",\"type\":\"runtime\",\"groups\":[\"default\"]},{\"name\":\"spring\",\"version\":\">= 0\",\"type\":\"development\",\"groups\":[\"development\"]},{\"name\":\"thin\",\"version\":\">= 0\",\"type\":\"development\",\"groups\":[\"development\"]},{\"name\":\"puma\",\"version\":\">= 0\",\"type\":\"runtime\",\"groups\":[\"production\"]},{\"name\":\"rails_12factor\",\"version\":\">= 0\",\"type\":\"runtime\",\"groups\":[\"production\"]},{\"name\":\"bugsnag\",\"version\":\">= 0\",\"type\":\"runtime\",\"groups\":[\"production\"]}]"
  end

  it "should successfully parse Podfiles" do
    path = File.expand_path("../fixtures/Podfile", __FILE__)
    file = File.open(path).read
    post '/podfile', body: file
    last_response.body.must_include "[{\"name\":\"Artsy-UIButtons\",\"version\":\">= 0\",\"type\":\"runtime\",\"groups\":[\"default\"]},{\"name\":\"ORStackView\",\"version\":\">= 0\",\"type\":\"runtime\",\"groups\":[\"default\"]},{\"name\":\"FLKAutoLayout\",\"version\":\">= 0\",\"type\":\"runtime\",\"groups\":[\"default\"]},{\"name\":\"ISO8601DateFormatter\",\"version\":\"= 0.7\",\"type\":\"runtime\",\"groups\":[\"default\"]},{\"name\":\"ARCollectionViewMasonryLayout\",\"version\":\"~> 2.0.0\",\"type\":\"runtime\",\"groups\":[\"default\"]},{\"name\":\"SDWebImage\",\"version\":\"~> 3.7\",\"type\":\"runtime\",\"groups\":[\"default\"]},{\"name\":\"SVProgressHUD\",\"version\":\">= 0\",\"type\":\"runtime\",\"groups\":[\"default\"]},{\"name\":\"CardFlight\",\"version\":\">= 0\",\"type\":\"runtime\",\"groups\":[\"default\"]},{\"name\":\"Stripe\",\"version\":\">= 0\",\"type\":\"runtime\",\"groups\":[\"default\"]},{\"name\":\"ECPhoneNumberFormatter\",\"version\":\">= 0\",\"type\":\"runtime\",\"groups\":[\"default\"]},{\"name\":\"UIImageViewAligned\",\"version\":\">= 0\",\"type\":\"runtime\",\"groups\":[\"default\"]},{\"name\":\"DZNWebViewController\",\"version\":\">= 0\",\"type\":\"runtime\",\"groups\":[\"default\"]},{\"name\":\"Reachability\",\"version\":\">= 0\",\"type\":\"runtime\",\"groups\":[\"default\"]},{\"name\":\"ARTiledImageView\",\"version\":\">= 0\",\"type\":\"runtime\",\"groups\":[\"default\"]},{\"name\":\"XNGMarkdownParser\",\"version\":\">= 0\",\"type\":\"runtime\",\"groups\":[\"default\"]},{\"name\":\"SwiftyJSON\",\"version\":\">= 0\",\"type\":\"runtime\",\"groups\":[\"default\"]},{\"name\":\"Swift-RAC-Macros\",\"version\":\">= 0\",\"type\":\"runtime\",\"groups\":[\"default\"]},{\"name\":\"FBSnapshotTestCase\",\"version\":\">= 0\",\"type\":\"runtime\",\"groups\":[\"default\"]},{\"name\":\"Nimble-Snapshots\",\"version\":\">= 0\",\"type\":\"runtime\",\"groups\":[\"default\"]},{\"name\":\"Quick\",\"version\":\">= 0\",\"type\":\"runtime\",\"groups\":[\"default\"]},{\"name\":\"Forgeries\",\"version\":\">= 0\",\"type\":\"runtime\",\"groups\":[\"default\"]}]"
  end
end
