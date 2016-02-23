class AddWineRefToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :wine, index: true, foreign_key: true
  end
end
