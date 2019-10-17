# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

NUM_USERS = 10
NUM_AUCTIONS = 10
NUM_BIDS = 30

PASSWORD = 'test'

User.delete_all
Auction.delete_all
Bid.delete_all

super_user = User.create( name: 'super', password: 'test')

book_list = [
    ['book1', 'book1 description'],
    ['book2', 'book2 description'],
    ['book3', 'book3 description'],
    ['book4', 'book4 description'],
    ['book5', 'book5 description']
]

book_list.each do |item_name, description|
    Auction.create( item_name: item_name, description: description, user: super_user )
    puts item_name
end

# User.create(
#     name: 'testing',
#     password: test
# )

# Auction.create(
#     item_name: 'book',
#     description: 'a big book for your book needs',
#     reserve_price: 80
# )