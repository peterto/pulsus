class Test
  include Mongoid::Document
  embeds_many :questions
  referenced_in :user
  
  key :id
end
