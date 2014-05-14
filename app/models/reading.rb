class Reading < ActiveRecord::Base
  extend FriendlyId
  attr_accessible :content, :image, :title

  validates :title, presence: true
  validates :image, presence: true, on: :create
  validates :content, presence: true

  friendly_id :title, use: :slugged

  mount_uploader :image, ImageUploader
end
