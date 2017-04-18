class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.text :title
      t.string :content
      t.string :thumbnail

      t.timestamps
    end
  end
end
