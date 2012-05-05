class UserHistory
  include Mongoid::Document
  field :long, :type => String
  field :lat, :type => String
  field :mood, :type => String
end
