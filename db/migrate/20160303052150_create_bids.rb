class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.decimal :amount, null: false
      t.references :company, index: true, foreign_key: true
      t.references :auction, index: true, foreign_key: true
      t.references :inventory_part, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
