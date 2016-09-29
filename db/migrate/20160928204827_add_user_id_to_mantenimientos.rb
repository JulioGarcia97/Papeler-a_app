class AddUserIdToMantenimientos < ActiveRecord::Migration[5.0]
  def change
    add_reference :mantenimientos, :user, foreign_key: true
  end
end
