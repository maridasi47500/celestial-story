class CreateApis < ActiveRecord::Migration[8.0]
  def change
    create_table :apis do |t|
      t.string :name
      t.string :link
      t.string :description
      t.integer :automationpage_id

      t.timestamps
    end
  end
end
