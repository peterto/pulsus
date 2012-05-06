class Answer
  include Mongoid::Document
  field :value, :type => Integer
  field :published_on, :type => Date
  referenced_in :user
end
