class Slideshow < ActiveRecord::Base
  attr_accessible :name, :slides_attributes

  validates :name, presence: true, uniqueness: true

  has_many :slides, dependent: :destroy
  accepts_nested_attributes_for :slides
end
