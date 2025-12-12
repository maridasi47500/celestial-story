class CreateStories < ActiveRecord::Migration[8.0]
  def change
    create_table :stories do |t|
      t.string :name
      t.integer :mytype_id

      t.timestamps
    end
  end
end
