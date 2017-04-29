class AddPortableColumnToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column  :products, :portable_or_not, :string
  end
end
