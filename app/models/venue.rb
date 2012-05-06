class Venue
  include Mongoid::Document
  field :name, :type => String
  field :lat, :type => Float
  field :long, :type => Float
  field :color, :type => Integer
  field :type, :type => String
  field :yelp_url, :type => String
end
