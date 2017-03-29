class User < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 3 }
  validates :password, presence: true, length: { minimum: 5 }
end
