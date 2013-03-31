class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
      t.string :title
      t.text :content
      t.string :image

      t.timestamps
    end
  end
end
