class User < ApplicationRecord
    has_secure_password 

    has_many :reviews, dependent: :destroy
    has_many :campsites, through: :reviews
    
    validates :username, presence: true
    validates :email, presence: true
    validates :password, presence: true

end
