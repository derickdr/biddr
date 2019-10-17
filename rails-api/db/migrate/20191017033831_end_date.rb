class EndDate < ActiveRecord::Migration[6.0]
  def change
    add_column :auctions, :end_date, :datetime
  end
end
