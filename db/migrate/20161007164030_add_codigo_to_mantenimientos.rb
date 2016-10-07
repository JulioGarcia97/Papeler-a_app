class AddCodigoToMantenimientos < ActiveRecord::Migration[5.0]
  def change
    add_column :mantenimientos, :codigo, :integer
  end
end
