class Relations < ActiveRecord::Migration[6.0]
  def change
    add_column :auctions, :description, :text
    add_reference :auctions, :user, foreign_key: true
    add_reference :auctions, :bids, foreign_key: true
    add_reference :bids, :user, foreign_key: true
    add_reference :bids, :auction, foreign_key: true
    add_reference :users, :auctions, foreign_key: true
    add_reference :users, :bids, foreign_key: true
  end
end
