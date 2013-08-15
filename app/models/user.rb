class User < ActiveRecord::Base

  include BCrypt

  has_many :comments
  has_many :posts
  
  def self.authenticate(username, password)

    user = User.find_by_username(username)

    if user && user.password == password
      return user
    else
      return nil
    end
    
  end

  def password
    @password ||= Password.new(self.password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

end
