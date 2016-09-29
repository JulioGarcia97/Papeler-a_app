class CreateMantenimientos < ActiveRecord::Migration[5.0]
  def change
    create_table :mantenimientos do |t|
      t.string :item
      t.integer :sku
      t.integer :quantity
      t.string :status
      t.string :apartment

      t.timestamps
    end
  end
end
