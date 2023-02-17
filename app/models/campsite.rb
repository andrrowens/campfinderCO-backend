class Campsite < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :users, through: :reviews

    validates :name, presence: true
    validates :description, presence: true
    validates :region, presence: true
end
