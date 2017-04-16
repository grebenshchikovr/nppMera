class CreateApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :applications do |t|
      t.text :title
      t.text :content
      t.text :thumbnail

      t.timestamps
    end
  end
end
