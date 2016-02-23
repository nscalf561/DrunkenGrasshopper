class AddUserRefToWines < ActiveRecord::Migration
  def change
    add_reference :wines, :users, index: true, foreign_key: true
  end
end
