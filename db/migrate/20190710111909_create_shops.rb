class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name, null: false, unique: true
      t.text :url, null: false, unique: true
      t.references :genre
      t.references :area
      t.references :user
      t.text :address
      t.timestamps
    end
  end
end
