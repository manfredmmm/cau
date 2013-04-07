class AddSlideshowIdToSlide < ActiveRecord::Migration
  def change
    add_column :slides, :slideshow_id, :integer
  end
end
