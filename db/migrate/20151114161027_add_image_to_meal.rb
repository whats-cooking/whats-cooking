class AddImageToMeal < ActiveRecord::Migration
  def change
    add_attachment :meals, :image
    remove_column :meals, :picture_url
  end
end
