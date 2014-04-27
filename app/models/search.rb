class Search
  include Mongoid::Document

  def self.request(keywords)
    # search_results = 

    # current_user.
    # authorization_request = 

    HTTParty.get "https://api.twitter.com/1.1/search/tweets.json", 
      {
        query: {
          q: keywords
        },
        headers: {
          "Authorization" => 'OAuth oauth_consumer_key="900kdPyvEBSWxul2mPFWi4BdT", oauth_nonce="7a939598cd1b29bae976545e9c38194b", oauth_signature="m%2Bu4nACfEqDFBvaJCSaHdEDbOmk%3D", oauth_signature_method="HMAC-SHA1", oauth_timestamp="1398640493", oauth_token="1537159381-ZbqzUQ34orD7szZH52iywvov7DD7zqYjmwEwjWx", oauth_version="1.0"'
        }
      }

  end

end
