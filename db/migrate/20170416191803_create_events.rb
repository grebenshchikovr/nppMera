class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.text :title
      t.text :content
      t.string :date
      t.text :thumbnail

      t.timestamps
    end
  end
end
