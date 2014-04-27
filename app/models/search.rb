class Search
  include Mongoid::Document

  def self.request(keywords)
    # Search for the keywords and return ID of the top result
    # search_results = 


    HTTParty.get "https://api.twitter.com/1.1/search/tweets.json", 
      {
        query: {
          q: keywords
        },
        headers: {
          "Authorization" => 'OAuth oauth_consumer_key="900kdPyvEBSWxul2mPFWi4BdT", oauth_nonce="379aabe6b773fc995aaf276995ef73b8", oauth_signature="ZCjlSq%2FGZ2bPV%2BfuwrGbPtcBmYI%3D", oauth_signature_method="HMAC-SHA1", oauth_timestamp="1398635970", oauth_token="1537159381-ZbqzUQ34orD7szZH52iywvov7DD7zqYjmwEwjWx", oauth_version="1.0"'
        }
      }



    # search_results = HTTParty.get "https://api.twitter.com/1.1/search/tweets.json?q=%40twitterapi"


    # movie_id = search_results['movies'][0]['id']

    #Grab the movie data from the ID
    # HTTParty.get "http://api.rottentomatoes.com/api/public/v1.0/movies/#{movie_id}.json?apikey=k2mrwxaafkd7p8z3zvyp6jcp"
  end

end
