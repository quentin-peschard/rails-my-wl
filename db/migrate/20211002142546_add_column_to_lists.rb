class AddColumnToLists < ActiveRecord::Migration[6.0]
  def change
    add_column :lists, :background_url, :string
  end
end
