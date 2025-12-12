class CreateAutomationpages < ActiveRecord::Migration[8.0]
  def change
    create_table :automationpages do |t|
      t.string :name
      t.string :link

      t.timestamps
    end
  end
end
