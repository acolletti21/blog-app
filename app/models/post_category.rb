class PostCategory < ApplicationRecord
  # belongs_to :user
  belongs_to :post
  belongs_to :category, optional: :true
end
