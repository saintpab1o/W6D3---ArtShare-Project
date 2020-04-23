class Like < ApplicationRecord
    validates :likable_id, :likable_type, :user_id, presence: true 
    validates  :user_id, uniqueness: { scope: [:likable_id, :likable_type], message: "you can only like a painting or comment once" }

    belongs_to :likable, 
    polymorphic: true

    belongs_to :user,
    foreign_key: :user_id,
    class_name: :User 



    


end