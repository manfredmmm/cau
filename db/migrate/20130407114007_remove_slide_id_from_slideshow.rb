class RemoveSlideIdFromSlideshow < ActiveRecord::Migration
  def up
    remove_column :slideshows, :slide_id
  end

  def down
    add_column :slideshows, :slide_id, :integer
  end
end
