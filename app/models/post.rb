class Post < ApplicationRecord
  belongs_to :author, class_name: "User", foreign_key: "user_id"
  has_many :post_editors
  has_many :editors, through: :post_editors, source: :user
end
