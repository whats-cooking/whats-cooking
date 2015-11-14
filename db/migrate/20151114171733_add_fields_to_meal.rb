class AddFieldsToMeal < ActiveRecord::Migration
  def change
    add_column :meals, :user_id, :integer
    add_column :meals, :time, :datetime
    add_column :meals, :location, :string
  end
end
