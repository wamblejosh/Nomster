class Place < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :photos
  mount_uploader :picture, PictureUploader

  geocoded_by :address
  after_validation :geocode
   
  validates :name, presence: true, length: { minimum: 3 } 
  validates :address, presence: true, length: { minimum: 3 }
  validates :description, presence: true, length: { minimum: 3}
end