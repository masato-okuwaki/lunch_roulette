class AddForeignkeyToShops < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :shops, :genre
    add_foreign_key :shops, :area
    add_foreign_key :shops, :user
  end
end
