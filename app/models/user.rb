class User < ActiveRecord::Base
  # validates :username, presence: true
  # validates :email, presence: true

  def password
    @password ||= BCrypt::Password.new(hash_password)
  end

  def password=(new_password)
    @password =  BCrypt::Password.create(new_password)
    self.hash_password = @password
  end

  def self.authenticate(opts = {})
    name = opts[:username]
    user =  User.find_by(username: name)
    if user && user.password == opts[:password]
      return user
    end
  end


 end
