class User < ActiveRecord::Base
  validates :username, presence: true
  validates :email, presence: true
  validates :hash_password, presence: true
  # Remember to create a migration!
end
