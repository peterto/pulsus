class Answer
  include Mongoid::Document
  field :title
  field :content
  field :published_on, :type => Date
  embedded_in :user
end
