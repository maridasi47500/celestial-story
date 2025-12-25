class CreateStoryhaspeople < ActiveRecord::Migration[8.0]
  def change
    create_table :storyhaspeople do |t|
      t.integer :story_id
      t.integer :storyperson_id

      t.timestamps
    end
  end
end
