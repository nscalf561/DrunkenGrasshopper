class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.integer :review
      t.text :textNotes

      t.timestamps null: false
    end
  end
end
