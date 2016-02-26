class AddWineToInfos < ActiveRecord::Migration
  def change
    add_reference :infos, :wine, index: true, foreign_key: true
  end
end
