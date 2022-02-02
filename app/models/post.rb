class Post < ApplicationRecord
    belongs_to :user
    validates :title, presence: :true, uniqueness: :true, length: {minimum:1, maximum:60}
    validates :description, presence: :true
    validates :body, presence: :true
end
