class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :vineyard
      t.integer :year
      t.string :name
      t.string :type
      t.string :link
      t.text :notes

      t.timestamps null: false
    end
  end
end
