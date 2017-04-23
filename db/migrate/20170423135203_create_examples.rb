class CreateExamples < ActiveRecord::Migration[5.0]
  def change
    create_table :examples do |t|
      t.text :title
      t.text :content
      t.references :direction, index: true

      t.timestamps
    end
  end
end
