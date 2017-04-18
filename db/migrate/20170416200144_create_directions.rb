class CreateDirections < ActiveRecord::Migration[5.0]
  def change
    create_table :directions do |t|
      t.text :title
      t.text :content
      t.text :thumbnail

      t.timestamps
    end
  end
end
