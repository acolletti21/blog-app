class User < ApplicationRecord
  has_secure_password
  has_many :posts
  has_many :categories
  has_many :post_categories

  validates :email, presence: true
  validates :email, uniqueness: true
  validates :email, format: {with: /\w{2,}\@\w+\.\w{2,3}/, message: "please enter a valid email"  }
  validates :name, presence: true
  validates :name, length: { minimum: 2} 
end
