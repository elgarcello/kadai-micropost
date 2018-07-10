class Micropost < ApplicationRecord
  belongs_to :user
  has_many :users, through: :favorites
  
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :favorites, dependent: :destroy
end
