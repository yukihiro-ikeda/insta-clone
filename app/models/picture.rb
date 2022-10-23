class Picture < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
  belongs_to :user
  validates :image, presence: true
  validates :content, presence: true, length: { maximum: 500 }
end
