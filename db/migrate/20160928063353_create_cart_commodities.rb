class CreateCartCommodities < ActiveRecord::Migration
  def change
    create_table :cart_commodities do |t|
      t.references :cart, index: true, null:false
      t.references :commodity, index: true, null:false
      t.integer :quantities,  null:false
      t.timestamps null: false
    end
  end
end
