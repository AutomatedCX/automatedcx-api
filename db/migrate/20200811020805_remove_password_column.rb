# typed: true
class RemovePasswordColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :password
  end
end
