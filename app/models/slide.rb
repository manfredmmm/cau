class Slide < ActiveRecord::Base
  attr_accessible :image, :title

  validates :image, presence: true
  validates :title, presence: true

  mount_uploader :image, SlideUploader
end
