class CreateTransaccions < ActiveRecord::Migration[5.0]
  def change
    create_table :transaccions do |t|

      t.timestamps
    end
  end
end
