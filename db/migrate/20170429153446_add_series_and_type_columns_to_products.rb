class AddSeriesAndTypeColumnsToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column  :products, :standart, :text
    add_column :products, :is_module?, :boolean
    add_column :products, :what_does_it_meassure, :text
  end
end
