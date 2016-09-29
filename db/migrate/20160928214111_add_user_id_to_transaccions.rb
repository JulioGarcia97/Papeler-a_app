class AddUserIdToTransaccions < ActiveRecord::Migration[5.0]
  def change
    add_reference :transaccions, :user, foreign_key: true
  end
end
