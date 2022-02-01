class Post < ApplicationRecord
    belongs_to :user
    validates :title, presence: :true, uniqueness: :true
    validates :description, presence: :true
    validates :body, presence: :true
end
