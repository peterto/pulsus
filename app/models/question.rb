class Question
  include Mongoid::Document
  field :title, :type => String
  field :value, :type => Integer
  key :title
  # embedded_in :test, :inverse_of => :questions
end
