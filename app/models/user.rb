class User
  include Mongoid::Document
  field :provider, type: String
  field :uid, type: String
  field :name, type: String
  field :access_token, type: String
  field :access_token_secret, type: String
end
