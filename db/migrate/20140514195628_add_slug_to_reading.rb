class AddSlugToReading < ActiveRecord::Migration
  def change
    add_column :readings, :slug, :string
    add_index :readings, :slug, :unique => true
  end
end
