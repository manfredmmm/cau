class Slide < ActiveRecord::Base
  attr_accessible :image, :title

  belongs_to :slideshow

  validates :image, presence: true, on: :create
  validates :title, presence: true

  mount_uploader :image, SlideUploader
end
