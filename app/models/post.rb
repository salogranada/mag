class Post < ApplicationRecord
    include AASM

    belongs_to :user
    has_many :comments
    
    validates :title, presence: :true, uniqueness: :true, length: {minimum:1, maximum:60}
    validates :description, presence: :true
    validates :body, presence: :true

    scope :publicados, ->{where(state: "published")}
    scope :ultimos, ->{order("created_at DESC")}

    aasm column: "state" do
        state :in_draft, initial:true
        state :published    

        event :publish do 
            transitions from: :in_draft, to: :published    
        end

        event :unpublish do 
            transitions from: :published, to: :in_draft 
        end    
    end
end
