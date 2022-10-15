class Question < ApplicationRecord
   validates :text, :user, presence: true
   belongs_to :user 
end
