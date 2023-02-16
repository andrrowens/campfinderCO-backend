class Review < ApplicationRecord
    belongs_to :user 
    belongs_to :campsite

    validates :title, presence: true
    validates :date, presence: true
    validates :content, presence: true
end
