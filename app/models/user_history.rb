class UserHistory
  include Mongoid::Document
  field :lat, :type => String
  field :long, :type => String
  field :mood, :type => String
  field :published_on, :type => Date
  
end
