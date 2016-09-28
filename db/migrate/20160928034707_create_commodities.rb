class CreateCommodities < ActiveRecord::Migration
  def change
    create_table :commodities do |t|
      t.string :name,    null:false
      t.integer :price,  null:false
      t.string :desctipion
      t.boolean :view_enabled, null:false
      t.decimal :position, null:false

      t.timestamps null: false
    end
  end
end
