class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :product_id
      t.string :quantity
      t.string :integer

      t.timestamps null: false
    end
  end
end
