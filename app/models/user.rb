class User < ApplicationRecord
  has_many :posts
  has_many :post_categories
end
