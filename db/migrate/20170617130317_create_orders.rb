class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.references :food_item, foreign_key: true
      t.integer :quality
      t.decimal :total_cost

      t.timestamps
    end
  end
end
