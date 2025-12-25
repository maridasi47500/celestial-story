class AddDescriptionToStories < ActiveRecord::Migration[8.0]
  def change
    add_column :stories, :description, :string
    add_column :stories, :content, :string
  end
end
