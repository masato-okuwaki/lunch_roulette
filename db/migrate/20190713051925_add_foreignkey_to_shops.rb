class AddForeignkeyToShops < ActiveRecord::Migration[5.2]
  def create
    add_foreign_key :shops, :genre
    add_foreign_key :shops, :area
    add_foreign_key :shops, :user
  end
end
