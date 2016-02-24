class RemoveWineIdFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :wine_id, :string
  end
end
