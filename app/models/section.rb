class Section < ActiveRecord::Base
  validates :image, presence: true
  attr_accessible :name, :title, :content, :image

  validates :name, presence: true, uniqueness: true
  validates :title, presence: true
  validates :content, presence: true

  mount_uploader :image, ImageUploader
end
