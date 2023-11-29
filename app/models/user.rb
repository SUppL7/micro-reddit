class User < ApplicationRecord

  has_many :posts
  has_many :comments

  validates :username, length: {in: 3..15}, uniqueness: true
  validates :email, uniqueness: true
  validates :password, length: {minimum: 5}
end
