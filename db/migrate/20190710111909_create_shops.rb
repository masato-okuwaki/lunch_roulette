class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :url
      t.string :genre
      t.string :area
      t.string :registered_name
      t.timestamps
    end
  end
end
