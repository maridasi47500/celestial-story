class CreateLlms < ActiveRecord::Migration[8.0]
  def change
    create_table :llms do |t|
      t.string :name
      t.string :link
      t.integer :llmpage_id

      t.timestamps
    end
  end
end
