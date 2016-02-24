class RemoveUserIdFromWine < ActiveRecord::Migration
  def change
    remove_column :wines, :user_id, :string
  end
end
