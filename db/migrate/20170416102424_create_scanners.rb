class CreateScanners < ActiveRecord::Migration[5.0]
  def change
    create_table :scanners do |t|
      t.text :name
      t.string :description
      t.string :photo

      t.timestamps
    end
  end
end
