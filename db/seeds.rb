require 'csv'

CSV.foreach('db/seeds/csv/shops_table.csv', headers: true) do |row|
  Shop.create(
    id: row['id'],
    name: row['name'],
    url: row['url'],
    area_id: row['area_id'],
    user_id: row['user_id'],
    genre_id: row['genre_id'],
    address: row['address'] 
)
end

CSV.foreach('db/seeds/csv/areas_table.csv', headers: true) do |row|
  Area.create(
    id: row['id'],
    name: row['name']
)
end

CSV.foreach('db/seeds/csv/genres_table.csv', headers: true) do |row|
  Genre.create(
    id: row['id'],
    name: row['name']
 )
end

CSV.foreach('db/seeds/csv/users_table.csv', headers: true) do |row|
  User.create(
    id: row['id'],
    name: row['name']
)
end
