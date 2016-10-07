class AddMinimumQuantityToMantenimientos < ActiveRecord::Migration[5.0]
  def change
    add_column :mantenimientos, :minimum_quantity, :integer
  end
end
