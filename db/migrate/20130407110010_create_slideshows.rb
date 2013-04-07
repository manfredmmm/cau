class CreateSlideshows < ActiveRecord::Migration
  def change
    create_table :slideshows do |t|
      t.string :name
      t.integer :slide_id

      t.timestamps
    end
  end
end
