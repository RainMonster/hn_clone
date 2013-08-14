class User < ActiveRecord::Base
  has_many :comments
  has_many :posts
  # Remember to create a migration!
end
