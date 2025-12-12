class CreateMytypes < ActiveRecord::Migration[8.0]
  def change
    create_table :mytypes do |t|
      t.string :name

      t.timestamps
    end
  end
end
