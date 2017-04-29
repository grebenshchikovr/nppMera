class CreateStandarts < ActiveRecord::Migration[5.0]
  def change
    create_table :standarts do |t|
      t.text :title
      t.string :descripton

      t.timestamps
    end
  end
end
