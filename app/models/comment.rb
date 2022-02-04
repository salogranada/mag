class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  scope :ultimos, ->{order("created_at DESC")}

end
