class CreateAuctions < ActiveRecord::Migration[6.0]
  def change
    create_table :auctions do |t|
      t.string :item_name
      t.integer :reserve_price

      t.timestamps
    end
  end
end
