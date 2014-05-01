class New < ActiveRecord::Base
  attr_accessible :content, :image, :title

  validates :title, presence: true
  validates :content, presence: true

  mount_uploader :image, ImageUploader
end
