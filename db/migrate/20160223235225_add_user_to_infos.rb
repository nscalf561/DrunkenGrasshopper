class AddUserToInfos < ActiveRecord::Migration
  def change
    add_reference :infos, :user, index: true, foreign_key: true
  end
end
