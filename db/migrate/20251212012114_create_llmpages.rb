class CreateLlmpages < ActiveRecord::Migration[8.0]
  def change
    create_table :llmpages do |t|
      t.string :name
      t.string :link

      t.timestamps
    end
  end
end
