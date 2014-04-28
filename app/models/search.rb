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
          "Authorization" => 'OAuth oauth_consumer_key="900kdPyvEBSWxul2mPFWi4BdT", oauth_nonce="5851be947bed841b6464e43289a3fdb1", oauth_signature="lsRs5YSb53yiiZi9HGlRsGXG0Y8%3D", oauth_signature_method="HMAC-SHA1", oauth_timestamp="1398648488", oauth_token="1537159381-ZbqzUQ34orD7szZH52iywvov7DD7zqYjmwEwjWx", oauth_version="1.0"'
        }
      }

  end

end
