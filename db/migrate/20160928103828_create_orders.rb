class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :cart, index: true, foreign_key: true
      t.date :delivery_day
      t.integer :delivery_time
      t.string :delivery_name

      t.timestamps null: false
    end
  end
end
