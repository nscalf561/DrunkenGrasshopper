class AddColumnToWines < ActiveRecord::Migration
  def change
    add_column :wines, :color, :string
  end
end
